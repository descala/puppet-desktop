class ap_desktop {

  class { 'apt-cacher-ng::client':
    server => '192.168.1.101:3142',
  }

  include tasl_desktop::common

}
