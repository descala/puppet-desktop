class tasl_desktop::common {

  include 'apt'
  include 'ntp'
  include 'rdesktop'
  include 'pdf'

  #class { 'libreoffice':
  #  source => 'backports',
  #}
  #include 'libreoffice::suite'

  package {
    ['vlc', 'keepass2', 'audacity', 'gvfs-fuse', 'scribus']:
      ensure => installed;
  }

  file {
    '/etc/xdg/autostart/gvfs.desktop':
      owner  => root,
      group  => root,
      mode   => '0644',
      source => 'puppet:///modules/tasl_desktop/gvfs.desktop';
  }

}
