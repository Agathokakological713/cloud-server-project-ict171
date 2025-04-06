
# Update system
sudo apt update -y && sudo apt upgrade -y

# Install Apache2
sudo apt install apache2 -y

# Allow Apache through firewall
sudo ufw allow 'Apache'

# Set permissions for /var/www/html
sudo chown -R $USER:$USER /var/www/html
sudo chmod -R 755 /var/www/html

# Restart Apache
sudo systemctl restart apache2

echo "Apache installation complete and permissions set."
