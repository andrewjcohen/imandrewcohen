class Photo
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
<img src="#{@post['photos'][0]['original_size']['url']}" />

#{@post['caption']}
EOF
    IO.write("source/#{date.strftime("%Y-%m-%d")}-#{@post['slug'].try(:parameterize)}.html.markdown", body)
  end
end
