require 'active_support/all'
require 'awesome_print'

open('legacy_proxies.rb', 'a') do |file|
  file.truncate(0)
  file.puts 'def define_proxies'
end

Dir.foreach('file_responses') do |file_name|
  if file_name != '.' && file_name != '..'
    file = File.open("file_responses/#{file_name}", 'r')
    response = eval(file.read)
    proxy = "  proxy '#{response['post_url'].sub(/http:\/\/blog.imandrewcohen.com/, '')}', '#{File.basename(file_name).sub(/\.markdown$/, '')}'"

    open('legacy_proxies.rb', 'a') do |file|
      file.puts proxy
    end
  end
end

open('legacy_proxies.rb', 'a') do |file|
  file.puts 'end'
end
