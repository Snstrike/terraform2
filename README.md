# terraform2

## Instalación

1. Ejecuta el siguiente comando para instalar yum-utils:
   ```bash
   sudo yum install -y yum-utils
   
2. Agrega el repositorio de HashiCorps:
   ```bash
    sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo

3. Instala terraform:
   ```bash
    sudo yum -y install terraform

## Uso
1. Sube tus archivos de Terraform como un archivo zip.
2. Descomprime el archivo subido.
   ```bash
   unzip filename.zip
3. Cambia al directorio descomprimido.
   ```bash
    cd filename
4. Inicializa y aplica.
   ```bash
   terraform init
   terraform apply


