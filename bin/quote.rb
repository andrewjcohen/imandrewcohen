class Quote
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
<div>
<q>
#{@post['text'].gsub(/\n\n/, "<br /><br />")}
</q>
</div>

-- #{@post['source']}
EOF
    IO.write("source/#{date.strftime("%Y-%m-%d")}-#{@post['slug'].try(:parameterize)}.html.markdown", body)
  end
end
