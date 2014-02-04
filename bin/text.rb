require 'nokogiri'
require 'open-uri'

class Text
  def initialize(post)
    @post = post
  end

  def import
    doc = Nokogiri::HTML(open(@post['post_url']))
    key = doc.xpath("//p[@class='author']")[0].content.strip
    date = Date.parse(@post['date'])
    author = 'Andrew Cohen'

    @post['body'].sub!(/writ{1,2}en by \[.+?\]\(.+?\).*$/i, '')
    @post['body'].sub!(/writ{1,2}en by \[.+?\]\[.+?\].*$/i, '')
    @post['body'].sub!(/(<p>){,1}(<span>){,1}writ{1,2}en by.+<\/a>.*$/i, '')
    body= <<-EOF
---
title: "#{@post['title'].try(:gsub, /"/, "\\\"")}"
tags: #{@post['tags'].join(',')}
author: #{author}
type: #{@post['type']}
---
#{@post['body']}
EOF
    IO.write("source/#{date.strftime("%Y-%m-%d")}-#{@post['slug'].try(:parameterize)}.html.markdown", body)
  end
end
