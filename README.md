# vagrant-centos6-php56
Turn-key LAMP/LNMP development stack, based on Centos 6, PHP5.6, MySQL 5.6.

## Dependencies:
- git https://git-scm.com/downloads
- vagrant https://www.vagrantup.com/downloads.html

## Installation:
### Steps:
1. Create a directory to host your VMs (e.g. /code)
	`mkdir -p /code/vagrants`

2. 'cd' to that directory
	`cd /code/vagrants`

3. Clone this repo into that directory 
	`git clone https://github.com/woodyj/vagrant-centos6-php56.git .`

### Notes:
There are two directories within the checked-out code:
  `./vagrant`
  `./workspace`
  
- `./vagrant` contains all the files necessary to run the Vagrant VM.
- `./workspace` provides a directory in which to store your working files, which is file-shared to the Vagrant VM - so you can access your working files from both your OS and the Vagrant VM.
- `./workspace` is also used by the Vagrant VM to serve projects via `http://localhost`

## Starting the Vagrant VM:
1. 'cd' to the ./vagrant directory
	`cd ./vagrant`

2. Start the Vagrant VM:
  `vagrant up`

On initial load, Vagrant may take anywhere up to 10 mins to install required dependencies.

## SSH to the Vagrant VM:
Vagrant automatically sets up SSH authentication, so SSH connections to the VM are simple and straightforward.

- In the `./vagrant` directory, type: `vagrant ssh`.