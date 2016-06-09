# vagrant-centos6-php56
A turn-key LAMP development stack, based on Centos 6, PHP5.6, MySQL 5.6.

## Dependencies
You will need to install these local dependencies before you can use Vagrant:
- git https://git-scm.com/downloads
- virtualbox https://www.virtualbox.org/wiki/Downloads
- vagrant https://www.vagrantup.com/downloads.html

## Installation
### Steps
1. Create a directory to host your VMs:
	`mkdir -p ~/code/vagrants/centos6`

2. 'cd' to that directory:
	`cd ~/code/vagrants/centos6`

3. Clone this repo into that directory:
	`git clone https://github.com/jimattwogether/vagrant-centos6-php56.git .`

### Notes
There are two directories within the checked-out code:
  `./vagrant`
  `./workspace`
  
- `./vagrant` contains all the files necessary to run the Vagrant VM.
- `./workspace` provides a directory in which to store your working files, which is file-shared to the Vagrant VM - so you can access your working files from both your OS and the Vagrant VM.
- `./workspace` is also used by the Vagrant VM to serve projects via http://localhost:8080

## Starting the VM
1. 'cd' to the ./vagrant directory
	`cd ./vagrant`

2. Start the VM:
  `vagrant up`

On first boot, Vagrant may take anywhere up to 10 mins to install required dependencies.

"Patient you must be, young Jedi.".

## Stopping the VM
1. 'cd' to the ./vagrant directory
	`cd ./vagrant`

2. Stop the VM:
	`vagrant suspend`

## Restarting the VM
1. 'cd' to the ./vagrant directory:
	`cd ./vagrant`

2. Resume the VM:
	`vagrant resume`

## Checking the status of the VM
1. 'cd' to the ./vagrant directory:
	`cd ./vagrant`

2. Check the status:
	`vagrant status`

## SSH'ing to the VM
SSH connections to the VM are pretty simple and straightforward:

- In the `./vagrant` directory, type: `vagrant ssh`.

SSH key pairs are provisioned for you, by Vagrant, when the VM boots, so you will not have to provide any login credentials when you connect.  You will automatically login as the 'vagrant' user, and will be free to `sudo` or `sudo su -` once inside.

## Hosting local sites from the VM
### Basic/quick usage (dedicated/single host)
By default, Apache will serve everything inside the `./workspace` (`/workspace` inside the VM) directory as one site.  This is convenient for anyone with little or no knowledge of configuring Apache, or if time is particularly tight - you could simply have one Vagrant VM per project, and keep things super simple.

However, if your project requires custom configuration, or if you'd prefer to run multiple projects within one VM (recommended if you're having to switch between projects often), you will most likely prefer the 'Advanced' usage (see below).

###Advanced usage (shared/multiple host/s)
To set up your own custom virtual hosts, and/or host multiple sites from the same VM, follow this example to get started:

1. SSH to the Vagrant VM (see above).
2. `sudo mkdir -p /workspace/hello/_logs`
3. `echo "<?php print '<h1>Hello world</h1>';" > /workspace/hello/index.php`
4. `sudo nano /etc/httpd/conf.d/hello.conf`
5. Add the following content:

		<VirtualHost *:80>
			
			ServerName hello.localhost
			DocumentRoot "/workspace/hello"
        
			ErrorLog /workspace/hello/_logs/error.log
			CustomLog /workspace/hello/_logs/access.log combined

			<Directory "/workspace/hello">
				DirectoryIndex index.php
			</Directory>

		</VirtualHost>

6. Press CTRL+x to quit Nano (hit Y when prompted to save changes).
7. Reconfigure Apache to support Name-based Virtual Hosts 
	sudo cp /vagrant/modules/apache/confs/shared.conf /etc/httpd/conf/httpd.conf
8. Restart Apache: `sudo service httpd restart`
9. Visit the following URL in your browser: http://hello.localhost:8080

For more info on Apache virtual host configuration options, visit: https://httpd.apache.org/docs/current/vhosts/name-based.html
