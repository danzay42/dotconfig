# Settings

## Linux power settings

- powertop
- [tlp](https://linrunner.de/tlp/index.html)
- [auto-cpufreq](https://https://github.com/AdnanHodzic/auto-cpufreq)



## zsh shell
- zsh `sudo dnf install zsh`
- [oh-my-zsh](https://ohmyz.sh/)
  ```
  ZSH_THEME="simple"
  plugins=(
      git
      zsh-autosuggestions
      poetry
      rust
  )
  ```

## Applications
- chrome
- [vscode](https://code.visualstudio.com/docs/setup/linux)
- [Port Proton](https://portwine-linux.ru/port-proton-linux/)
  ```
  wget -c "https://github.com/Castro-Fidel/PortWINE/raw/master/portwine_install_script/PortProton_1.0" && sh PortProton_1.0
  ```
- etc:
  ```
  sudo dnf install
  bpython gparted code
  ```


## Fedora 36

### dnf config 
add to dnf.conf `sudo nano /etc/dnf/dnf.conf`
```
skip_if_unavailable=True
fastestmirror=True 
max_parallel_downloads=10 
defaultyes=True
```


### drivers
- add [rpm fusion](https://rpmfusion.org/)
- install drivers
    ```
    sudo dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel

    sudo dnf install lame\* --exclude=lame-devel

    sudo dnf group upgrade --with-optional Multimedia
    ```

### [Flatpak](https://flatpak.org/)

```
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

## Gnome

```console
sudo dnf install gnome-tweaks
flatpak install flathub com.mattjakeman.ExtensionManager
```
Extensions:
- Vitals
- AppIndicator and KStatusNotifireItem
- Removable Drive Menu
- Clipboard Indicator
- Status Area Horizontal Spacing