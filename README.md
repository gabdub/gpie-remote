# gpie-remote
Linux PC remote control using *Apache*, *Gnome-Pie*, *xdotool*, ...


## Installation guide
In the following steps replace *gabriel* with *your* user name.

### xdotool
*xdotool* is used to type characters and move the mouse.

1. install
    `sudo apt-get install xdotool`

### Apache2
*Apache2* is used to serve the web page that control your Linux PC.

1. install Apache2
    `sudo apt-get install apache2`

2. create "mysite":
    `sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/mysite.conf`
    `sudo gedit /etc/apache2/sites-available/mysite.conf`
    add this to the file:
    `DocumentRoot /var/www/`

    `sudo mkdir /var/www/mysite`
    `sudo chown gabriel:gabriel /var/www/mysite`
    copy project files from *www* folder into */var/www/mysite*
    
3. activate "mysite" and disable the default site:
    `sudo a2ensite mysite`
    `sudo a2dissite 000-default`

4. activate CGI running in Apache
    `sudo a2enmod cgi`

5. restart Apache
    `sudo service apache2 restart`

6. copy project files from *cgi-bin* into */usr/lib/cgi-bin*
   modify access permissions to *-rwxr-xr-x*
    `sudo chmod 755 /usr/lib/cgi-bin/docmd.sh`

7. copy the scripts from project folder *webscripts* into */home/gabriel/webscripts*

8. allow to execute "dowebcmd.sh" script with different user permissions
   `sudo visudo`
   add this to the end of *visudo* file:
    `www-data ALL=(gabriel) NOPASSWD: /home/gabriel/webscripts/dowebcmd.sh`


