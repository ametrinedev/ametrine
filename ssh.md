# SSH Tutorial for all major OSes
## Windows 10  

1.) Open the Settings app, click `Apps`, click `Manage optional features`, click `Add a feature` and install both OpenSSH Server and Client. If you can't install one or the other, as long as you can install one, that should do.  
2.) Open Command Prompt by typing in `cmd` to the Start Menu or the Run box and open it.  
3.) Get the IP Address of your iDevice by going into the Wi-fi settings and ensuring the computer and the device are on the same network, then click the i. You will see a box labelled IP Address.  
4.) Go back to your computer in command prompt and type `ssh root@ip.address.of.phone`. The client may ask about authentication. Type `yes` and hit enter. The client will ask for a password. Type `alpine` and click enter.  
5.) Congrats! You have now successfully SSHed into your phone and can execute commands remotely.

## macOS

1.) First off, congrats! You have it easy.  
2.) Open Terminal.  
3.) Get the IP Address of your iDevice by going into the Wi-fi settings and ensuring the computer and the device are on the same network, then click the i. You will see a box labelled IP Address.  
4.) Go back to your computer in Terminal and type `ssh root@ip.address.of.phone`. The client may ask about authentication. Type `yes` and hit enter. The client will ask for a password. Type `alpine` and click enter.  
5.) Congrats! You have now successfully SSHed into your phone and can execute commands remotely.  

## Linux

1.) Most Linux distros come with SSH installed, so open a Terminal and type `ssh`. If the command succeeds, go to step 3. If it doesn't, go to step 2.  
2.) Run `sudo apt install ssh`. It may ask for your password, just type your password. If apt isn't your package manager, use `apt-get` or `pacman`.
3.) Get the IP Address of your iDevice by going into the Wi-fi settings and ensuring the computer and the device are on the same network, then click the i. You will see a box labelled IP Address.  
4.) Go back to your computer in Terminal and type `ssh root@ip.address.of.phone`. The client may ask about authentication. Type `yes` and hit enter. The client will ask for a password. Type `alpine` and click enter.  
5.) Congrats! You have now successfully SSHed into your phone and can execute commands remotely.  
  
###### Made with ♡ by Dudeamax99 and quiprr
