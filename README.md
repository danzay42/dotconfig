# **Settings**

## Linux power settings

- powertop
- s-tui
- [tlp](https://linrunner.de/tlp/index.html)
- [auto-cpufreq](https://github.com/AdnanHodzic/auto-cpufreq)

## ZSH Shell
- zsh  
  Fedora: `sudo dnf install util-linux-user zsh`
  Debian: `sudo apt install curl zsh`
- [oh-my-zsh](https://ohmyz.sh/)  
  `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)  
  `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
  ```
  ZSH_THEME="simple"
  plugins=(git zsh-autosuggestions archlinux
      python poetry
      rust
      httpie node npm
  )
  ```

## Applications
- chrome (TODO: add instruction)
- [vscode](https://code.visualstudio.com/docs/setup/linux)
- [Port Proton](https://portwine-linux.ru/port-proton-linux/)
  ```
  wget -c "https://github.com/Castro-Fidel/PortWINE/raw/master/portwine_install_script/PortProton_1.0" && sh PortProton_1.0
  ```
- etc:
  ```
  sudo dnf install

  bpython 
  bat
  gparted
  qbittorrent
  httpie
  nodejs
  ```
  <!-- <hr> -->
  <!-- <b>bpython</b>: interactive python shell<br> -->
  <!-- <b>bat</b>: improved cat -->
  ---
  **bpython**: interactive python shell  
  **bat** - improved cat
- [Ventoy](https://www.ventoy.net/en/index.html)


## Python

- poetry (improved pip)
- mypy (static code analyzer)

```
pip install

poetry 
mypy
```

## ARCH

### Packages
zsh git firefox gparted bpython nodejs httpie bat qbittorrent
`sudo pacman -S zsh git firefox gparted bpython nodejs httpie bat qbittorrent`

### bluetooth
```
sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service
```
### sound and microphone
[Advanced Linux Sound Architecture/Troubleshooting](https://wiki.archlinux.org/title/Advanced_Linux_Sound_Architecture)
```
sudo pacman -S sof-firmware
```

### After Install
```
sudo pacman -S gnome-themes-extra
sudo pacman -R gnome-boxes cheese gnome-contacts gnome-maps gnome-photos gnome-music totem gnome-weather epiphany
yay -S gnome-browser-connector
```

### AUR Helper (yay)
```
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si
```

## Fedora 36

### DNF 
add to dnf.conf `sudo nano /etc/dnf/dnf.conf`
```
skip_if_unavailable=True
fastestmirror=True 
max_parallel_downloads=10 
defaultyes=True
```


### Drivers (TODO: doesn't remember - need to check)
**Add** [rpm fusion](https://rpmfusion.org/)  

**Install drivers**
```
sudo dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel

sudo dnf install lame\* --exclude=lame-devel

sudo dnf group upgrade --with-optional Multimedia
```

### [Flatpak](https://flatpak.org/)

```
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```
vscode flatpack shell configuration


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
  

## Etc user config

```
sudo usermod -aG dialout $USER
```

### Git
```
git config --global user.name "Daniil Zaytsev"
git config --global user.email zdanil34@gmail.com
```
<!-- git config --global credential.helper cache
git config --global credential.helper "cache --timeout=3600" -->

