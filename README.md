# gpie-remote
**gpie-remote** allows you to control your Linux PC remotely from your cellphone or tablet.
You can easily adapt it to your needs. Only some basic HTML and BASH scripting knowledge is required.
The current version uses: *Apache*, *Gnome-Pie*, *xdotool* and *ccsm*, but only a web server and *xdotool* are needed.


## Installation guide
In the following steps replace **gabriel** with **your** user name.

### xdotool
*xdotool* is used to type characters and move the mouse.
http://www.semicomplete.com/projects/xdotool/

- **Install:**
    `sudo apt-get install xdotool`

### Apache2
*Apache2* is used to serve the web page that control your Linux PC.
There are lots of tutorials on the net about Apache+CGI, here is how I installed it:

- **Install:**
    `sudo apt-get install apache2`

- **Create "mysite":**
    `sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/mysite.conf`

    `sudo gedit /etc/apache2/sites-available/mysite.conf`

  and add this to the file: **DocumentRoot /var/www/**

    `sudo mkdir /var/www/mysite`
    
    `sudo chown gabriel:gabriel /var/www/mysite`

  copy project files from **www** folder into **/var/www/mysite**
    
- **Activate "mysite"** (and disable the default site):
    `sudo a2ensite mysite`

    `sudo a2dissite 000-default`

- **Activate CGI:**
    `sudo a2enmod cgi`

- **Restart Apache:**
    `sudo service apache2 restart`

- **Copy CGI files:**
  copy project files from **cgi-bin** into **/usr/lib/cgi-bin**
  modify access permissions to **-rwxr-xr-x**
  edit the files and replace **gabriel** with your user name.

    `sudo chmod 755 /usr/lib/cgi-bin/docmd.sh`

- **Copy scripts:**
  copy files from project folder **webscripts** into **/home/gabriel/webscripts**
  edit the files and replace **gabriel** with your user name.

- **Allow to execute "dowebcmd.sh" with a different user**
    `sudo visudo`

  and add this line to the end of the *visudo* file:

    `www-data ALL=(gabriel) NOPASSWD: /home/gabriel/webscripts/dowebcmd.sh`
    (don't forget to replace **gabriel** with your user name)

### gnome-pie
*gnome-pie* is used to launch programs and do some predefined actions.
- **Install:**
  http://simmesimme.github.io/gnome-pie.html

### CompizConfig Settings Manager
*ccsm* allows to set up some keyboard accelerators to zoom desktop in and out.
- **Install:**
  `sudo apt-get install compizconfig-settings-manager`

### NumixCircle-Icons
Since I'm using *NumixCircle* icon theme, several images in the remote control are based or taken from Numix.
https://github.com/numixproject/numix-icon-theme-circle

### See the wiki: https://github.com/gabdub/gpie-remote/wiki
