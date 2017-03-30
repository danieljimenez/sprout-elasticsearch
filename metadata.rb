name             'sprout-elasticsearch'
maintainer       'Foreflight'
maintainer_email 'danielj@foreflight.com'
license          'MIT'
description      'Recipes to install and configure ElasticSearch on OS X'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.3.0'

supports         'mac_os_x'
depends          'homebrew', '>= 1.5.4'
depends          'sprout-base'
depends          'java'