class tasl_desktop::devel {

  class { 'apt-cacher-ng::client':
    server => '192.168.13.54:3142'
  }

  include tasl_desktop::common

}
