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
    ['vlc', 'keepass2', 'audacity', 'gvfs-fuse', 'scribus', 'qgis']:
      ensure => installed;
  }

  file {
    '/etc/xdg/autostart/gvfs.desktop':
      owner  => root,
      group  => root,
      mode   => '0644',
      source => 'puppet:///modules/tasl_desktop/gvfs.desktop';
    '/usr/local/mount_gvfs.sh':
      owner  => root,
      group  => root,
      mode   => '0755',
      source => 'puppet:///modules/tasl_desktop/mount_gvfs.sh';
  }

}
