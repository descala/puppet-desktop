class tasl_desktop {

  class { 'apt-cacher-ng::client':
    server => '192.168.0.2:3142',
  }

  include tasl_desktop::common

}
