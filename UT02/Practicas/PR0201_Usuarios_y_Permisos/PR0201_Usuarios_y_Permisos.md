# PR0201: Usuarios y permisos en Linux
---

## Enunciado

### 1. Permisos de usuarios

A no ser que se indique lo contrario realiza todas las operaciones desde el directorio personal de tu usuario.
```bash 
cd ~
```
1.	Crea el directorio `pr0201` dentro de tu directorio personal y dentro de él crea los directorios `dir1` y `dir2` ¿Cuáles son los permisos del directorio `dir1`? No pongas una captura, explica quiénes tienen permisos sobre el directorio y qué pueden hacer en él.
---
```bash
mkdir -p pr0201/dir1 pr0201/dir2
ls -ld pr0201/dir1 pr0201/dir2
drwxrwxr-x 2 usuario usuario 4096 oct 22 17:00 pr0201/dir1
drwxrwxr-x 2 usuario usuario 4096 oct 22 17:00 pr0201/dir2
```
* d -> Indica que es un directorio.
* rwx -> indica que el propietario tiene todos los permisos.
* r-x -> indica que el grupo solo pueden leer y listar.
* r-x -> indica que otros pueden leer y listar solo.
---
2.	Utilizando   la   notación   simbólica, elimina   todos   los   permisos de   escritura (propietario, grupo, otros) del directorio `dir2`.
--- 
```bash
chmod a-w pr0201/dir2
```
---
3.	Utilizando la notación octal, elimina el permiso de lectura del directorio `dir2`, al resto de los usuarios.
---
```bash 
chmod 551 pr0201/dir2
```
---
4.	¿Cuáles son ahora los permisos asociados a `dir2`?
---
```bash
ls -ld pr0201/dir2
dr-xr-x--x 2 usuario usuario 4096 oct 22 17:00 pr0201/dir2
```
* d -> Indica que es un directorio.
* r-x -> indica que el propietario solo puede leer y entrar
* r-x -> indica que el grupo solo pueden leer y entrar.
* --x -> indica que otros pueden entrar solo.
---
5.	Crear bajo `dir2`, un directorio llamado `dir21`.
---
```bash
mkdir pr0201/dir2/dir21
mkdir: cannot create directory ‘pr0201/dir2/dir21’: Permission denied
```
---
6.	Concédete a ti mismo permiso de escritura en el directorio `dir2` e intenta de nuevo el paso anterior.
---
```bash
chmod 751 pr0201/dir2
mkdir pr0201/dir2/dir21
```
---
### 2. Notación octal y simbólica

1.	Supón que el fichero `~/file` tiene los permisos `rw-r--r--`. Escribe el comando o comandos que necesitarías para establecer los siguientes permisos en el fichero anterior utilizando **notación simbólica**. 

- `rwxrwxr-x` :
  ```bash
  chmod u=rwx,g=rwx,o=rx file
  ```
- `rwxr--r--` :
  ```bash
  chmod u=rwx file 
  ```
- `r--r-----` :
  ```bash
  chmod u-wx,o-r file 
  ```
- `rwxr-xr-x` :
  ```bash
  chmod u+x,g+x,o+x file
  ```
- `rwxr-xr-x` :
  ```bash
  chmod u+x,g+x,o+x file
  ```
- `r-x--x--x` :
  ```bash
  chmod u=rx,g-r,o=x file
  ```
- `-w-r----x` :
  ```bash
  chmod u-r,o=x file
  ```
- `-----xrwx` :
  ```bash
  chmod u-rw,g=x,o=rwx file
  ```
- `r---w---x` :
  ```bash
  chmod u-w,g=w,o=x file
  ```
- `-w-------` :
  ```bash
  chmod u-r,g-r,o-r file
  ```
- `rw-r-----` :
  ```bash
  chmod o-r file
  ```
- `rwx--x--x` :
  ```bash
  chmod u+x,g=x,o=x file
  ```
---
2.	Escribe el comando que necesitarías para establecer los siguientes permisos en el fichero anterior utilizando **notación octal**.

- `rwx rwx rwx` : 
  ```bash
  chmod 777 file
  ```
- `--x --x --x` : 
  ```bash
  chmod 111 file
  ```
- `r-- -w- --x` :
  ```bash
  chmod 421 file
  ```
- `-w- --- ---` : 
  ```bash
  chmod 200 file
  ```
- `rw- r-- ---` :
  ```bash
  chmod 640 file
  ```
- `rwx --x --x` :
  ```bash
  chmod 711 file
  ```
- `rwx r-x r-x` :
  ```bash
  chmod 755 file
  ```
- `r-x --x --x` :
  ```bash
  chmod 511 file
  ```
- `-w- r-- --x` :
  ```bash
  chmod 241 file 
  ```
- `--- --x rwx` :
  ```bash
  chmod 017 file
  ```
---
### 3. El bit setgid

Vamos a ver ahora cómo funciona y para qué sirve el **bit setgid**. Realiza los siguientes pasos:

1. Crea un grupo llamado `asir` y los usuarios `{iniciales}1` e `{iniciales}2`, donde `{iniciales}` son las iniciales de tu nombre. Por ejemplo, en mi caso se llamarían `vjgr1` y `vjgr2`. Haz que los usuarios pertenezcan al grupo.
---
```bash
sudo groupadd asir
sudo useradd -m -G asir -s /bin/bash dsa1
sudo useradd -m -G asir -s /bin/bash dsa2
```
---
3. Crea el directorio `/compartido` y asigna propietario: `root` como usuario propietario y `asir` como grupo propietario.
---
```bash
sudo mkdir /compartido
sudo chown root:asir /compartido
```
---
3.  Asigna al directorio creado permisos de lectura, escritura y ejecución para el usuario y el grupo propietario. El resto de usuarios no tendrá ningún tipo de permiso.
---
```bash
sudo chmod 770 /compartido
```
---
4.  Establece el **bit setgid** en el directorio y verifica que se haya asignado.
---
```bash
sudo chmod 2770 /compartido
sudo ls -ld /compartido
drwxrws--- 2 root asir 4096 oct 23 15:32 /compartido
```
---
5.  Inicia sesión con `usuario1`, accede al directorio y crea un fichero llamado `fichero1` con algo de contenido. Comprueba los permisos del fichero que has creado.
---
```bash
su dsa1
cd /compartido
nano fichero1
ls -l fichero1
-rw-rw-r-- 1 dsa1 asir 22 oct 23 15:42 fichero1
```
---
6.  Ahora inicia sesión con `usuario2` y comprueba si puedes acceder a `/compartido/fichero1` y si puedes añadirle contenido.
---
```bash
su dsa2
cd /compartido
nano fichero1
```
Si puedes añadir contenido

---
7.  Responde las siguientes preguntas:
    - ¿Qué ventajas tiene usar el bit setgid en entornos colaborativos?
  `Hacen que los ficheros y subdirectorios creados hereden el grupo del propietario del directorio y falicita la colaboracion en un grupo.`
    - ¿Qué sucede si no se aplica el bit setgid en un entorno colaborativo?
  `Puede que nuevos fichjero terminen con permiso de grupos distintos`
1. Cuando hayas acabado, limpia el sistema eliminando los usuarios y el directorio creado para la práctica.
---
```bash
sudo userdel -r dsa1
sudo userdel -r dsa2
sudo groupdel asir
sudo rm -r /compartido
```
---


### 4. El sticky bit

Ahora vamos a practicar con el **sticky  bit**. Realiza los siguientes pasos:

1. Crea el directorio `/compartido` con todos los permisos para todos los usuarios.
---
```bash 
sudo mkdir /compartido
sudo chmod 777 /compartido
```
---
2. Crea dos usuarios `{iniciales}1` e `{iniciales}2`
---
```bash
sudo adduser dsa1
sudo adduser dsa2
```
---
3. Vamos a probar primero el funcionamiento sin el sticky bit. Inicia sesión con el primer usuario, crea un fichero y luego, con el segundo usuario, intenta eliminarlo.
---
```bash
su dsa1
cd /compartido
touch fichero1
su dsa2
rm fichero1
```
---
4. Ahora establece el sticky bit en el directorio y verifica que se ve en los permisos.
---
```bash
sudo chmod 1777 /compartido
```
---
5. Vuelve a iniciar sesión con el primer usuario, crea un fichero e intenta eliminarlo con el segundo usuario.
---
```bash
su dsa1
cd /compartido
touch fichero1
su dsa2
rm fichero1
```
Ahora no puedes borrarlo `rm: cannot remove 'fichero1': Operation not permitted`

---
6. Responde las siguientes preguntas:
   - ¿Qué efecto tiene el sticky bit en un directorio?
  `Cuando esta el sticky bit solo el propietario del fichero o del directorio o el root pueden editar o borrar ficheros de ese directorio.`
   - Si tienes habilitado el sticky bit, ¿cómo tendrías que hacer para eliminar un fichero dentro del directorio?
  `Pues borrarlo desde el propietario del fichero o desde root`


### 5. El fichero `/etc/shadow` (**OPCIONAL**)

`NO REALIZADO`
### 6. Rompiendo hashes con John the Ripper (**OPCIONAL**)
`NO REALIZADO`

[VOLVER A INICIO](../../../index.md)