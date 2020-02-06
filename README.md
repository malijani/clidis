# clidis
An interactive command line display manager!

![clidis preview](./screenshot/screenshot_v2.0.png)

![RepoSize](https://img.shields.io/github/repo-size/malijani/clidis.svg?style=flat-square) ![Contributors](https://img.shields.io/github/contributors/malijani/clidis.svg?style=flat-square)
    
## AUTOMATIC INSTALLATION

1. Download the script with `curl` or `wget` : 
	
    `wget https://raw.githubusercontent.com/malijani/clidis/master/clidm/clidis -O clidis`

	`curl https://raw.githubusercontent.com/malijani/clidis/master/clidm/clidis -o clidis`
	        
2. Change script permission : 

	`chmod +x ./clidis`

3. Run it with `-i` or `--install` switch : 

    `./clidis -i`

## AUTOMATICALLY REMOVE

Just run it with `-u` or `--uninstall` switch : `./clidis -u`


## TEST MODE

After downloading the script you can just use `-t` or `--test-mode` to see what it's look like! : `./clidis -t`

## CONFIGURATION

The clidis configuration is in **~/.config/clidis/config** you can tweak clidis a little with defined variables! please don't mess with `systemDefaultDisplayManager` and `lastUserChoice` variable!

You can enable or disable showing system status under the clidis logo and tweak them (0 for disable and 1 for enable).

## MANUAL INSTALLATION

1. Download the script with `curl` or `wget` into your home directory : 
	
    `wget https://raw.githubusercontent.com/malijani/clidis/master/clidm/clidis -O ~/.clidis`

	`curl https://raw.githubusercontent.com/malijani/clidis/master/clidm/clidis -o clidis`
	        
2. Change script permission : 

	`chmod +x ~/.clidis`
    
3. Disable your current display manager : 

    `sudo systemctl disable display-manager.service`

4. Append the following line into your login shell profile (`zsh` -> **~/.zprofile** | `fish` -> **~/.config/fish/config.fish** | `bash` -> **~/.bash_profile**) : 
    
    `exec bash $HOME/.clidis`
     
     For fish shell just run this command : 
     
     `echo -e "if status --is-login\n\texec bash $HOME/.clidis\nend" >> $HOME/.config/fish/config.fish`
     
    If you don't know your login shell, just run this command : 
    
    `echo $SHELL`

5. Reboot your system : `reboot`

## MANUALLY REMOVE

1. Remove $HOME/.clidis : `rm ~/.clidis`

2. Remove clidis line from your login shell profile : `sed '/clidis/d' /path/to/shell_profile`

3. Enable your display manager : `sudo systemctl enable YourDisplayManagerService`

4. Reboot the system : `reboot`

### NEWS

* Added config file

* Added automatic install and remove option

* Added test option

* Added interactive selection menu and ui

* Script will remember last user choice

* Added shutdown and reboot options

### MORE

>  Special thanks to : 
>  **MisterH**, **sudoMicroRobot**

Made with :heart: for cli users!

