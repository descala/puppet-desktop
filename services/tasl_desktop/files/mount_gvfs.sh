#!/bin/sh

gvfs-mount smb://server/dades

if [ ! -e ~/Servidor ]; then
  ln -s ~/.gvfs ~/Servidor
fi
