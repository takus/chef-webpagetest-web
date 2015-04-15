default['webpagetest-web']['documentroot'] = "/var/www"

apache_modules = node['apache']['default_modules']
if !apache_modules.include?('php5')
  default['apache']['default_modules'] << 'php5'
end
