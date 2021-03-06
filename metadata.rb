# encoding: utf-8
name             'etcd_ubuntu_server'
maintainer       'Darron Froese'
maintainer_email 'darron@froese.org'
license          'Apache 2.0'
description      'Installs/configures etcd on an ubuntu server'
version          '0.2.0'
recipe           'etcd_ubuntu_server::default', 'Installs/configures etcd on an ubuntu server'

depends 'chef-sugar'
depends 'apt'
depends 'ubuntu_base', '0.10.0'
depends 'octobase'
depends 'etcd'
depends 'sysstat', '1.3.0'
depends 'sysdig'
