class tasl_desktop::common {

  include 'apt'
  include 'ntp'
  include 'rdesktop'
  include 'pdf'

  class { 'libreoffice':
    source => 'backports',
  }
  include 'libreoffice::suite'

  package {
    ['vlc','keepass2','audacity']:
      ensure => installed;
  }

}
