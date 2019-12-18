# Vagrant Nginx Server

## Start Up
1. On git bash create a directory: ````mkdir #````
2. ````cd```` into the directory
3. Run ````vagrant init```` ---> this gets the directory initialised with a vagrant file
4. Run ````atom .```` to open the vagrant file on atom
5. Clean up and make changes to the vagrant file. Identify the OS in the ````config.vm.box```` method e.g.: ````"ubuntu/xenial64"````. Also, set up ````config.vm.network```` method ---> This is how our host sees our box(OS)

## Installing Nginx

### Manual provisioning
1. ````vagrant ssh```` ---> logs into the guess machine granting the user root access so that a password does not need to be entered all the time.
2. Next run ```` sudo apt update```` ---> This will update the ubuntu binaries
3. Run ````sudo apt install nginx```` to install the Nginx Server


### Automating the process
1. Create a file on the root directory called ````provision.sh````
2. In the file add the following commands:
````sudo apt-get update -y ````
````sudo apt-get upgrade -y ````
````sudo apt-get install nginx -y````
````sudo apt-get install nodejs -y````

````curl -sL https://deb.nodesource.com/setup_6.x | sudo bash -apt-get install -y nodejs````

````sudo npm install pm2 -g ````

### Finals
1. Run ```` vagrant up ````
