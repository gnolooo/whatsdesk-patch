# WhatsDesk Patch
Custom patches to [zerkc](https://gitlab.com/zerkc/)'s [WhatsDesk](https://gitlab.com/zerkc/whatsdesk/).

This script patches WhatsDesk changing its tray icons, replacing ```WhatsDesk``` with ```WhatsApp``` in its window title and tray menu, and setting a custom window size for the application.

## Instructions
### Dependencies
* ```npm```
* ```asar``` (to install it: ```npm install asar```)

### Install the script in the system
Git clone the repository and execute ```install.sh```. This will copy the script in ```/usr/local/bin/``` so you can execute it directly from command-line. It will also execute whatsdesk-patch one first time.
```
$ git clone https://github.com/gnolooo/whatsdesk-patch/
$ cd whatsdesk-patch
$ chmod +x install.sh
$ ./install.sh
```
The following times you will just have to execute ```whatsdesk-patch```.

## Post-install tips and credits
### Changing icons
The tray icons in the ```whatsdesk-icons``` folder are taken from [Papirus Icon Theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme), all credits to them.

If you want to change them, you can replace them and then re-patch WhatsDesk using the script. Just make sure to make 4 icons, 2 sized 25x25 pixels and 2 sized 100x100 pixels, keeping the same name scheme.

Also, if you want you can create a custom ```.desktop``` file to change the application name and icon as well. Here is an example of the ```.desktop``` file:
```
[Desktop Entry]
Name=WhatsApp
Exec=/opt/whatsdesk/whatsdesk %U
Terminal=false
Type=Application
Icon=/my-custom-path
StartupWMClass=whatsdesk
Comment=Unofficial WhatsApp client for Linux 
Keywords=chat;messaging;messenger;message;wa;
Categories=Network;
```
This repo contains a ```WhatsApp.png``` icon as well, made by me using the same flat and colorful [Papirus Icon Theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)'s style.
