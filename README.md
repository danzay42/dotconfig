# **Soft**
## Base
  - firefox gparted qbittorrent 
  - nodejs python rust  
  - alacritty kitty git tmux tree bpython httpie curl wget htop powertop nvtop procs s-tui pass starship
   linux improved utils: 
    - [starship](https://starship.rs/) prompt [git](https://github.com/starship/starship)
    - bat <- cat
    - exa <- ls
    - grep <- ripgrep
    - fd <- find
    - tldr | info <- man
    - tokei (program to estemate programm languages is folder)
    - htop <- top <- <u>procs</u> <- ps
  - zsh zsh-autosuggestions zsh-syntax-highlighting 
    - [oh-my-zsh](https://ohmyz.sh/)  
        Fedora zsh: `sudo dnf install util-linux-user`  
        Debian zsh: `sudo apt install curl`  
        `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
    - * [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)  
      `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
    - * [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)  
      `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`
    - patch  
      `patch ${HOME}/.zshrc zsh_config_patch.diff`   
      or `patch ${HOME}/.zshrc zsh_config_patch_u.diff`
  - python
    - [poetry](https://python-poetry.org/):
      `curl -sSL https://install.python-poetry.org | python3 -`
    - mypy autopep8
  - nvim  
    - lsp servers
      - rust-analyzer
      - pyright  
    - vim [plugins](https://github.com/junegunn/vim-plug)  
      ```console
      sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
      ```
	- Troubleshooting  
	  on Wayland install wl-clipboard
  - [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts)  
    ```
	git clone --depth 1  https://github.com/ryanoasis/nerd-fonts.git
	cd nerd-fonts
	./install.sh
	cd ../ 
	rm -rf nerd-fonts
	```
	
## Flatpack
  - Google Chrome
  - Osidian (Markdown editor)
## Gnome
  Extensions:
  - [Dash to Dock](https://github.com/micheleg/dash-to-dock)
  - [Vitals](https://github.com/corecoding/Vitals)
  - [AppIndicator and KStatusNotifireItem](https://github.com/ubuntu/gnome-shell-extension-appindicator)
  - [Removable Drive Menu](https://gitlab.gnome.org/GNOME/gnome-shell-extensions)
  - [Clipboard Indicator](https://github.com/Tudmotu/gnome-shell-extension-clipboard-indicator)
  ```console
  gnome-extensions enable clipboard-indicator@tudmotu.com
  gnome-extensions enable appindicatorsupport@rgcjonas.gmail.com
  gnome-extensions enable Vitals@CoreCoding.com
  gnome-extensions enable dash-to-dock@micxgx.gmail.com
  gnome-extensions enable drive-menu@gnome-shell-extensions.gcampax.github.com
  ```
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
    
    modify /etc/mkinitcpio.conf:  `MODULES=(btrfs nvidia nvidia_modeset nvidia_uvm nvidia_drm)`  
    and exec:  `mkinitcpio -p linux-lts` or `mkinitcpio -p linux`
    modify /etc/gdm/custom.conf:  `WaylandEnable=true`  
    add wayland gdm login:  `sudo ln -s /dev/null /etc/udev/rules.d/61-gdm.rules`
### Troubleshooting
- bluetooth  
  ```console
  sudo systemctl enable bluetooth.service
  sudo systemctl start bluetooth.service
  ```
- sound and microphone  
  [Advanced Linux Sound Architecture/Troubleshooting](https://wiki.archlinux.org/title/Advanced_Linux_Sound_Architecture)  
  `sudo pacman -S sof-firmware`
- fonts
  ```console
  sudo pacman -S noto-fonts
  ```
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
## Misc usb visibility 
  `sudo usermod -aG dialout $USER`
## Locale
  ```console
  sudo echo "ru_RU.UTF-8 UTF-8" >> /etc/locale.gen
  sudo locale-gen
  ```
## Gnome
  ```console
  gsettings set org.gnome.desktop.interface color-scheme prefer-dark
  gsettings set org.gnome.desktop.interface enable-hot-corners false
  
  gsettings set org.gnome.desktop.session idle-delay 1200
  gsettings set org.gnome.settings-daemon.plugins.power power-button-action "interactive"
  gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-timeout 1200
  gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 1200
  
  shortcut_gset=org.gnome.settings-daemon.plugins.media-keys
  shortcut_custom=/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/
  
  gsettings set ${shortcut_gset}.custom-keybinding:${custom_shortcut} binding '<Super>t'
  gsettings set ${shortcut_gset}.custom-keybinding:${custom_shortcut} name 'Terminal'
  gsettings set ${shortcut_gset}.custom-keybinding:${custom_shortcut} command 'gnome-terminal'
  gsettings set ${shortcut_gset} custom-keybindings "['${shortcut_custom}']"
  
  gsettings set org.gnome.desktop.input-sources per-window true
  gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('xkb', 'ru')]"

  ```

