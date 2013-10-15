class tasl_desktop::common {

  include 'apt'
  include 'ntp'
  include 'rdesktop'

  class { 'libreoffice':
    source => 'edge',
  }
  include 'libreoffice::suite'

}
