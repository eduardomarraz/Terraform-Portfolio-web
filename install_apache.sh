#!/bin/bash
 
# Actualiza los paquetes e instala Apache
sudo yum update -y
sudo yum install -y httpd
 
# Inicia Apache y habilita para que inicie en cada reinicio del sistema
sudo systemctl start httpd
sudo systemctl enable httpd

sudo wget https://www.free-css.com/assets/files/free-css-templates/download/page296/oxer.zip
sudo unzip oxer.zip
sudo mv oxer-html/* /var/www/html/

sudo systemctl restart httpd
sudo systemctl enable httpd

# Crea una página web de ejemplo
#echo "<html><h1>Hola desde Terraform!</h1></html>" | sudo tee /var/www/html/index.html

