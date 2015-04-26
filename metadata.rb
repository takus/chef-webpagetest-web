name             'webpagetest-web'
maintainer       'Takumi Sakamoto'
maintainer_email 'takumi.saka@gmail.com'
license          'Apache 2.0'
description      'Installs/Configures webpagetest web-server'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.0'

depends 'yum-repoforge', '~> 0.5.0'
depends 'git', '~> 4.1.0'
depends 'apache2', '~> 3.0.1'
depends 'php', '~> 1.5.0'

%w{ centos }.each do |os|
  supports os
end

recipe 'webpagetest-web', 'Installs webpagetest web-server'
