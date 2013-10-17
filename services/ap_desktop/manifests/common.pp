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

  # mount smb file server
  package { 'autofs':
    ensure => installed
  }
  file { '/etc/auto.master':
    content => '/mnt/arxiver /etc/auto.arxiver --timeout=6000 --ghost',
    require => Package['autofs'],
    notify => Service['autofs']
  }
  file { '/etc/auto.arxiver':
    content => 'public -fstype=cifs,rw,username=nobody,password=,uid=1000,gid=1000 ://192.168.1.101/public',
    require => Package['autofs'],
    notify => Service['autofs']
  }
  service { 'autofs':
    ensure => running
  }
}
