# encoding: utf-8
name             'etcd_ubuntu_server'
maintainer       'Darron Froese'
maintainer_email 'darron@froese.org'
license          'Apache 2.0'
description      'Installs/configures etcd_ubuntu_server'
version          '0.1.0'
recipe           'etcd_ubuntu_server::default', 'Installs/configures etcd_ubuntu_server'

depends 'chef-sugar'
