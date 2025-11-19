#!/bin/bash

# Update system
apt-get update -y

# Install Nginx
apt-get install -y nginx

# Enable & start Nginx
systemctl enable nginx
systemctl start nginx

# Create app directory
mkdir -p /var/www/html/app1

# Create main index page
cat <<EOF > /var/www/html/index.html
<h1>Welcome to My Ubuntu Nginx Server</h1>
<p>Deployed using EC2 User Data.</p>
EOF



