# encoding: utf-8
name             'etcd_ubuntu_server'
maintainer       'Darron Froese'
maintainer_email 'darron@froese.org'
license          'Apache 2.0'
description      'Installs/configures etcd on an ubuntu server'
version          '0.1.0'
recipe           'etcd_ubuntu_server::default', 'Installs/configures etcd on an ubuntu server'

depends 'chef-sugar'
depends 'apt'
depends 'ubuntu_base'
depends 'octobase'
depends 'docker'
depends 'etcd'
depends 'sysstat', '1.3.0'
