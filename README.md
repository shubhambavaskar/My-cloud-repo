# My-cloud-repo
This is my 1st repo as a cloud engineer
<br>
Author-shubham bavaskar
<br>
<br>
my old github account deleted this is my new guthub account
<br>
----------------------------------------------------------------------------------------------------------------------------------------------------------------
# Webserver Nginx
# nginx on EC2
```
// updating a ec2 instanceb
sudo yum update -y

// install nginx server on ec2 
sudo yum install nginx -y

// check for nginx version
sudo nginx -v

// start nginx
sudo nginx

sudo systemctl enable nginx

sudo systemctl start nginx

sudo systemctl status nginx

```


# Install and Run Nginx with Docker on EC2
```
// install docker
sudo yum install docker

// check docker version
docker --version

// start docker engine
sudo systemctl start docker

// pull docker image 
sudo docker pull nginx:latest 

// list docker images
sudo docker images

// run nginx docker image 
sudo docker run -p 80:80 nginx:latest
   
// Check web-browser for nginx server

http://public-ip-of-ec2-instance
```

# Webserver Apache
Basic EC2 Webserver Script. Apache Server | EC2 Advanced | Terraform Script.

// Webserver | Configuration
```
EC2 | amazon-linux-2023 | t2 micro
Security Group: http:80 , https:443, ssh:22
ssh >> update instance, httpd, /var/www/html/index.html
<h1> This is webserver </h1>
public ip
```

// Commands after ssh

```
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo usermod -a -G apache ec2-user
sudo chmod 777 /var/www/html
cd /var/www/html
touch index.html
sudo nano index.html
cat index.html
history
```

Paste following Code to
EC2 - Advanced Details - user data

```
#!/bin/bash
yum update -y
yum install httpd -y
systemctl start httpd
systemctl enable httpd
usermod -a -G apache ec2-user
chmod 777 /var/www/html
cd /var/www/html
echo "<h1>hello from $(hostname -f) webserver</h1>">/var/www/html/index.html
```

// Deploy Webserver on Azure VM
// Task: Configuration of Webserver on Ubuntu Server 2022
```
sudo apt update -y
sudo apt install apache2
sudo apt install mini-httpd -y
sudo systemctl start mini-httpd
sudo systemctl enable mini-httpd
sudo chmod 777 /var/www/html
cd /var/www/html
sudo touch index.html
nano --version
nano index.html
```
// Copy following code to index.html
```
<!DOCTYPE html>
<html>
<body>

<h1> This is a Webserver. </h1>
<p> Hello form EC2 </p>

</body>
</html>
```

Check public-ip of machine
```
http://vm-public-ip/index.html
```

// Launch website from git to EC2 directly via terraform
```
sudo yum update -y
sudo yum install git -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo usermod -a -G apache ec2-user
sudo chmod 777 /var/www/html
git clone github-repository-URL
mv * source-folder /var/www/html
```
// Check public instance ip

