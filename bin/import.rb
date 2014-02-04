# Import posts from the tumblr blog
#
require 'httparty'
require 'active_support/all'
require 'awesome_print'
load 'bin/text.rb'
load 'bin/photo.rb'
load 'bin/quote.rb'
load 'bin/link.rb'
load 'bin/video.rb'

#unless ARGV[0].present?
#  abort("Usage: ruby import.rb tumblr_api_key\nSee: https://api.tumblr.com/console")
#end

r = HTTParty.get("http://api.tumblr.com/v2/blog/blog.imandrewcohen.com/posts?api_key=d4CwZWeNV18JMzoSHkcdPkvVMQn2pmvqGc91m8wc4VBkiBEEw0&filter=raw")
total_posts = r['response']['total_posts']
(0..total_posts).step(20) do |offset|
  r = HTTParty.get("http://api.tumblr.com/v2/blog/blog.imandrewcohen.com/posts?api_key=d4CwZWeNV18JMzoSHkcdPkvVMQn2pmvqGc91m8wc4VBkiBEEw0&filter=raw&offset=#{offset}")
  r['response']['posts'].each do |post|
    ap post
    post['tags'] = post['tags'] - ['podcast']
    puts "Importing #{post['slug']}"
    Object::const_get(post['type'].capitalize).new(post).import
  end
end
