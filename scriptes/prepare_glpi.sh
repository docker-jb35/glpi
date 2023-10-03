#!/bin/sh

TARBALL=glpi-10.0.10.tgz
wget https://github.com/glpi-project/glpi/releases/download/10.0.10/$TARBALL

tar -xzvf $TARBALL

rm $TARBALL
