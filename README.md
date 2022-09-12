# **Soft**
## Base
  - zsh git bat bpython firefox gparted qbittorrent nodejs httpie  
  - [oh-my-zsh](https://ohmyz.sh/)  
        Fedora zsh: `sudo dnf install util-linux-user`  
        Debian zsh: `sudo apt install curl`  
        `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
    - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)  
      `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
    - patch  
      `patch ${HOME}/.zshrc zsh_config_patch.diff`   
      `patch ${HOME}/.zshrc zsh_config_patch_u.diff`
  - python
    - [poetry](https://python-poetry.org/)  
      `curl -sSL https://install.python-poetry.org | python3 -`
    - mypy
  - rust
## Gnome
  Extensions:
  - Dash to Dock
  - Vitals
  - AppIndicator and KStatusNotifireItem
  - Removable Drive Menu
  - Clipboard Indicator
## Power controll & and efficiency
  - s-tui
  - [tlp & tlp-rdw](https://linrunner.de/tlp/index.html)
  - [auto-cpufreq](https://github.com/AdnanHodzic/auto-cpufreq)
  - powertop
## Applications
  - [Chrome](https://www.google.com/intl/ru_ru/chrome/)
  - [Visual Studio Code](https://code.visualstudio.com/docs/setup/linux)  
     - AUR: visual-studio-code-bin  
      `yay -S visual-studio-code-bin`
  - [Port Proton](https://portwine-linux.ru/port-proton-linux/)  
    `wget -c "https://github.com/Castro-Fidel/PortWINE/raw/master/portwine_install_script/PortProton_1.0" && sh PortProton_1.0`
  - [Ventoy](https://www.ventoy.net/en/index.html)

# **After install**
## ArchLinux
### Gnome
  ```console
  sudo pacman -S gnome-themes-extra
  yay -S gnome-browser-connector
  sudo pacman -R gnome-boxes cheese gnome-contacts gnome-maps gnome-photos gnome-music totem gnome-weather epiphany
  ```
### AUR Helper (yay)
  ```console
  sudo pacman -S --needed base-devel
  git clone https://aur.archlinux.org/yay-git.git
  cd yay-git
  makepkg -si
  ```
### Nvidia drivers
  - \> 1xxx  
    `sudo pacman -S nvidia` or `nvidia-lts` and etc...
  - geforce gtx 780  
    `yay -S nvidia-470xx-dkms nvidia-470xx-settings nvidia-470xx-utils`
### Troubleshooting
- bluetooth  
  ```console
  sudo systemctl enable bluetooth.service
  sudo systemctl start bluetooth.service
  ```
- sound and microphone  
  [Advanced Linux Sound Architecture/Troubleshooting](https://wiki.archlinux.org/title/Advanced_Linux_Sound_Architecture)  
  `sudo pacman -S sof-firmware`
## Fedora
### DNF 
  add to dnf.conf `sudo nano /etc/dnf/dnf.conf`
  ```
  skip_if_unavailable=True
  fastestmirror=True 
  max_parallel_downloads=10 
  defaultyes=True
  ```
### Soft
  ```console
  sudo dnf install gnome-tweaks
  flatpak install flathub com.mattjakeman.ExtensionManager
  ```
### Drivers (TODO: doesn't remember - need to check)
  **Add** [rpm fusion](https://rpmfusion.org/)  
  **Install drivers**
  ```console
  sudo dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
  sudo dnf install lame\* --exclude=lame-devel
  sudo dnf group upgrade --with-optional Multimedia
  ```
### [Flatpak](https://flatpak.org/)
  ```console
  flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
  ```

# **Git**
  ```console
  git config --global user.name "Daniil Zaytsev"
  git config --global user.email zdanil34@gmail.com
  ```
  <!-- git config --global credential.helper cache
  git config --global credential.helper "cache --timeout=3600" -->

# **Configs**
  `sudo usermod -aG dialout $USER`
