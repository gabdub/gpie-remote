# gpie-remote
Linux PC remote control using *Apache*, *Gnome-Pie*, *xdotool*, ...


## Installation guide
In the following steps replace **gabriel** with **your** user name.

### xdotool
*xdotool* is used to type characters and move the mouse.

1. **Install:** `sudo apt-get install xdotool`

### Apache2
*Apache2* is used to serve the web page that control your Linux PC.

1. **Install:** `sudo apt-get install apache2`

2. **Create "mysite":**
```
    sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/mysite.conf
    sudo gedit /etc/apache2/sites-available/mysite.conf
```
    and add this to the file: `DocumentRoot /var/www/`
```
    sudo mkdir /var/www/mysite
    sudo chown gabriel:gabriel /var/www/mysite
```
    copy project files from *www* folder into */var/www/mysite*
    
3. **Activate "mysite"** (and disable the default site):
```
    sudo a2ensite mysite
    sudo a2dissite 000-default
```

4. **Activate CGI:**
```
    sudo a2enmod cgi
```

5. **Restart Apache:**
```
    sudo service apache2 restart
```

6. **Copy CGI files:**
   copy project files from *cgi-bin* into */usr/lib/cgi-bin*
   modify access permissions to *-rwxr-xr-x*
```
    sudo chmod 755 /usr/lib/cgi-bin/docmd.sh
```

7. **Copy scripts:**
   copy files from project folder *webscripts* into */home/gabriel/webscripts*

8. **Allow to execute "dowebcmd.sh" with a different user**
```
   sudo visudo
```
   and add this to the end of *visudo* file:
```
   www-data ALL=(gabriel) NOPASSWD: /home/gabriel/webscripts/dowebcmd.sh
```
   
### gnome-pie
*gnome-pie* is used to launch programs and do some predefined actions.



