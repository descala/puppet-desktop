class ap_desktop::devel {

  class { 'apt-cacher-ng::client':
    server => '192.168.13.128:3142'
  }

  include ap_desktop::common

}
