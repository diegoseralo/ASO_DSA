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
2. Crea dos usuarios `{iniciales}1` e `{iniciales}2`
3. Vamos a probar primero el funcionamiento sin el sticky bit. Inicia sesión con el primer usuario, crea un fichero y luego, con el segundo usuario, intenta eliminarlo.
4. Ahora establece el sticky bit en el directorio y verifica que se ve en los permisos.
5. Vuelve a iniciar sesión con el primer usuario, crea un fichero e intenta eliminarlo con el segundo usuario.
6. Responde las siguientes preguntas:
   - ¿Qué efecto tiene el sticky bit en un directorio?
   - Si tienes habilitado el sticky bit, ¿cómo tendrías que hacer para eliminar un fichero dentro del directorio?


### 5. El fichero `/etc/shadow` (**OPCIONAL**)

El fichero `/etc/shadow` es un directorio cuya protección es vital en un sistema Linux ya que contiene los hashes de las contraseñas de los usuarios. 

Para esta parte de la práctica tienes que utilizar la imagen `generic/ubuntu2004` de Vagrant.

1. Crea un usuario llamado `{iniciales}` con contraseña `asir2`.
2. Muestra la línea de l fichero `/etc/shadow` que contiene la contraseña de este usuario.
3. En el segundo enlace del apartado [recursos](#recursos) puedes ver un listado de los diferentes tipos de hash soportados por este fichero. ¿Cuáles son?
4. ¿Cuál es el tipo de hash utilizado en tu sistema?
5. Seguro que has observado que hay un segundo campo en el hash que llama la **sal**. ¿Para qué sirve este campo?
6. Dos tipos de ataque muy comunes para obtener las contraseñas de los usuarios son los **ataques de diccionario** y las **tablas rainbow**. Busca por Internet y averigua en qué consisten ambos tipos de ataque.
7. En el tercer enlace de los [recursos](#recursos) puedes ver cómo se genera un hash SHA512 desde la línea de comandos. Verifica que el hash que hay guardado en el fichero `/etc/shadow` es el hash de la contraseña `asir1`


### 6. Rompiendo hashes con John the Ripper (**OPCIONAL**)

Como una parte importante de la administración de sistemas es la protección de los mismos, vamos a ver cómo funciona una de las herramientas más utilizadas para obtenerlas a partir de los hash. Esta herramienta se llama **John the Ripper**, y, aunque permite varios tipos de ataque, la usaremos para realizar un **ataque de diccionario**.

Realiza los siguientes pasos:

- Instálala a partir de los repositorios. 
- Obviamente, para un ataque de diccionario necesitamos el diccionario de palabras. Uno de los más conocidos es el denominado `rockyou.txt`, que contiene casi 15 millones de contraseñas. Tienes la URL en el apartado recursos, descárgalo y guárdalo en `/usr/share/wordlists`
- Si `rockyou.txt` se te queda pequeño siempre puedes utilizar alguno de los diccionarios del proyecto SecLists (enlace en recursos), que contiene diccionarios para todo tipo de ataques.
- A continuación, extrae la cadena con el hash de la contraseña en un fichero que llamaremos `passwordfile`.
- Ya es momento the utilizar JtR, si investigas un poco verás que dispone de tres modos: single mode, dictionary e incremental. Realiza una breve investigación y explica en qué consiste cada uno de los modos.
- Utiliza JtR para descifrar la contraseña, recuerda que los modificadores que puedes utilizar son:
  - `--single`
  - `--wordlist dict_file`
  - `--incremental`


### ¿Qué hay que entregar?

Debes entregar:

- Documentación de los pasos más relevantes


