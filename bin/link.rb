class Link
  def initialize(post)
    @post = post
  end

  def import
    date = Date.parse(@post['date'])
    body= <<-EOF
---
title: "#{@post['title'].try(:gsub, /"/, "\\\"")}"
tags: #{@post['tags'].join(',')}
type: #{@post['type']}
url: #{@post['url']}
---
#{@post['description']}
EOF
    IO.write("source/#{date.strftime("%Y-%m-%d")}-#{@post['slug'].try(:parameterize)}.html.markdown", body)
  end
end
