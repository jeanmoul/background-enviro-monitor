#!/bin/sh

outfile="/tmp/grafana.deb"
download_base="https://dl.grafana.com/oss/release/"
case $1 in
   rpi)  package_file="grafana-rpi_7.5.7_armhf.deb"
       ;;
   aarch64) package_file="grafana_7.5.7_arm64.deb"
       ;;
   *) package_file="grafana_7.5.7_armhf.deb"
esac
wget -O "${outfile}" "${download_base}${package_file}"
