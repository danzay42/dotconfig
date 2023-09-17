#!/usr/bin/env bash

product="pycharm-community-2023.2.1"
install_dir="${HOME}/.local/share/"
bin_dir="${HOME}/.local/bin/"

curl -L "https://download.jetbrains.com/python/${product}.tar.gz" | tar -xvz --directory $install_dir
chmod +x "${install_dir}/${product}/bin/pycharm.sh"
ln -s "${install_dir}/${product}/bin/pycharm.sh" "${bin_dir}/pycharm"

