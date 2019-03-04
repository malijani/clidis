# clidis
A command line display manager to start your desktop more intractive!

![clidis preview](https://raw.githubusercontent.com/virtualdemon/clidis/master/screenshot/screenshot.png)

![RepoSize](https://img.shields.io/github/repo-size/virtualdemon/clidis.svg?style=flat-square) ![Contributors](https://img.shields.io/github/contributors/virtualdemon/clidis.svg?style=flat-square)
    
## HOW TO USE

1. download the script with `curl` or `wget` : 
	
    `wget https://raw.githubusercontent.com/virtualdemon/clidis/master/clidis -O ~/.clidis`

	`curl https://raw.githubusercontent.com/virtualdemon/clidis/master/clidis -o ~/.clidis`
	        
2. change script permission (just once!) : 

	`chmod +x ~/.clidis`

3. run it from tty when there isn't any display manager running : 

	`~/.clidis`

## AUTOMATIC RUN AFTER LOG IN

1. disable your current display manager : 

    `sudo systemctl disable display-manager.service`

2. run the following command to add automatic script run after log in : 

    `echo "exec bash $HOME/.clidis" >> $HOME/.profile`
    
    
### MORE

>  special thanks to : 
    MisterH (for testing)
    
Made with :heart: for cli users!
