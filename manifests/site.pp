node default {
  include 'tasl_desktop'
}

node 'gnome.ingent.local' {
  include 'tasl_desktop::devel'
}
