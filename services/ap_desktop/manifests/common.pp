class ap_desktop::common {

  include 'apt'
  include 'vim'
  include 'ntp'
  include 'rdesktop'
  include 'libreoffice::suite'
  include 'chromium'
  include 'iceweasel'
  include 'icedove'

  package { "task-english":
    ensure => purged
  }

  package { "task-catalan":
    ensure => installed
  }


}
