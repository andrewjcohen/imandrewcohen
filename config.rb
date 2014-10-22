activate :blog do |blog|
  blog.default_extension = '.md'
  blog.paginate = true
  blog.per_page = 50
  blog.permalink = ':title.html'
  blog.prefix = 'journal'
  blog.sources = '/:year/:month-:day-:title.html'
  blog.tag_template = 'tag.html'
end

page "journal/*", :layout => :article_layout
page '/feed.xml', layout: false

activate :directory_indexes
set :css_dir, 'assets/css'
set :js_dir, 'assets/js'
set :images_dir, 'assets/images'
set :relative_links, true
set :markdown, fenced_code_blocks: true, smartypants: true
set :markdown_engine, :redcarpet

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  activate :relative_assets
end

activate :deploy do |deploy|
  deploy.method = :git
end
