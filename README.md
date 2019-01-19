# super-waddle

Código base para hospedar múltiplos sites wordpress de maneira rápida e eficaz utilizando docker.

# Tutorial

A principio apenas um :
```
git clone  https://github.com/tengu-br/super-waddle.git
docker-compose up
```
É suficiente para subir o projeto. Basta mudar o domínio nas configurações do proxy em proxy.conf

## Extra

Para acelerar o desenvolvimento do site, é possível também já subir os containers com múltiplos temas e plugins, porém alguns passos adicionais são necessários:

**1.** Instalar [este plugin](https://github.com/CWSpear/local-persist) docker na máquina hospedeira
```
curl -fsSL https://raw.githubusercontent.com/CWSpear/local-persist/master/scripts/install.sh | sudo bash
```
**2.** Criar uma pasta no hospedeiro para armazenar os temas e plugins
```
mkdir /home/super-waddle/assets
```
**3.** Clonar os repositórios auxiliares dentro da pasta recém-criada
```
cd /home/super-waddle/assets
git clone https://github.com/Madureiradaniel/themes
git clone https://github.com/Madureiradaniel/plugins
git clone https://github.com/Madureiradaniel/languages
```
**4.** Criar o volume persistente, mapeado para a pasta criada
```
docker volume create -d local-persist -o mountpoint=/home/super-waddle/assets --name=assetsVolume
```
**5.** Descomentar as seguintes linhas do docker-compose.yml
```
volumes:
      - assetsVolume:/var/www/html/wp-content/
 
 [...]
 
volumes:
  assetsVolume:
    driver: local-persist
    driver_opts:
      mountpoint: /home/super-waddle/assets

```
 *ps: a isntalação será feita em inglês mas é possível mudar o idioma mais tarde.*
# Desenvolvimento

Acompanhe o progresso do projeto pela aba "Projects"
