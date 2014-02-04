class Video
  def initialize(post)
    @post = post
  end

  def import
    date = Date.parse(@post['date'])
    body= <<-EOF
---
tags: #{@post['tags'].join(',')}
type: #{@post['type']}
---
#{@post['player'][2]['embed_code']}
#{@post['caption']}
EOF
    IO.write("source/#{date.strftime("%Y-%m-%d")}-#{@post['slug'].try(:parameterize)}.html.markdown", body)
  end
end
