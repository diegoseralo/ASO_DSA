# PR0205: Programación de tareas con `cron`

Contesta a las siguientes preguntas:

1. ¿Qué orden pondrías en crontab en los siguientes casos?

    - La tarea se ejecuta cada hora
    ---
    ```bash
    0 * * * * comando
    ```
    ---
    - La tarea se ejecuta los domingos cada 3 horas
    ---
    ```bash
    0 */3 * * 0 comando
    ```
    ---
    - La tarea se ejecuta a las 12 de la mañana los días pares del mes.
    ---
    ```bash
    0 12 */2 * * comando
    ```
    ---
    - La tarea se ejecuta el primer día de cada mes a las 8 de la mañana y a las 8 de la tarde.
    ---
    ```bash
    0 8,20 1 * * comando
    ```
    ---
    - La tarea se ejecuta cada media hora de lunes a viernes.
    ---
    ```bash
    */30 * * * 1-5 Comando
    ```
    ---
    - La tarea se ejecuta cada cuarto de hora, entre las 3 y las 8, de lunes a viernes, durante todo el mes de agosto
    ---
    ```bash
    */15 3-8 * 8 1-5 comando
    ```
    ---
    - La tarea se ejecuta cada 90 minutos
    ---
    ```bash
    0 */1 * * * comando 
    30 */2 * * * comando
    ```
    ---

2. ¿Cómo compruebas si el servicio cron se está ejecutando?
---
```bash
sudo systemctl status cron 
```
---
3. ¿Cuál es el efecto de la siguiente línea `crontab`?

```
    */15 1,2,3 * * * who > /tmp/test
```
---
Cada 15 mins,durante las 1, 2, 3 de la madrugada, todos los dias, la salida del comando who se sobreescribe en /tmp/test.
---
1. Indica la ruta del fichero `crontab` del sistema
---
```bash
/etc/crontab
```
---
1. ¿Qué ficheros controlan los usuarios que pueden utilizar el `crontab`?
---
```bash
/etc/cron.allow
/etc/cron.deny
```
---
1. Excepcionalmente se debe iniciar una tarea llamada `script.sh` todos los lunes a las 07:30h antes de entrar en clase ¿Cómo lo harías?
---
```bash 
crontab -e
```
Añades:
`30 7 * * 1 script.sh`

---
7. Se ha cancelado la tarea. ¿Cómo listar y luego, suprimir la tarea?
---
```bash
crontab -l
crontab -r
```
---
8. Ejecuta el comando `ps -ef` para el usuario `root` cada 2 minutos y redirecciona el resultado a `/tmp/ps_result` sin sobrescribir los antiguos.
---
```bash
sudo crontab -e 
```
Añades:
`*/2 * * * * ps -ef >> /tmp/ps_result`

---
9. Verifica la lista de tareas en `crontab`
---
```bash
crontab -l 
```
---
10. Espera unos minutos y comprueba el resultado en `/tmp`
---
```bash
cat /tmp/ps_result 
```
---
11. Crea el usuario `asir2` y prohíbele utilizar el `crontab`.
---
```bash
sudo adduser asir2
sudo nano /etc/cron.deny
```
E introduces el nombre del ususario dentro del archivo.

---
12. Verifica que el usuario `asir2` realmente no puede utilizar `crontab`
---
```bash
su asir2
crontab -e
```
---
13. Programa `crontab` para que cada día a las 0:05 se eliminen todos los ficheros que se encuentran en el directorio `/tmp`.
---
```bash
crontab -e 
```
Añades:
`*/2 * * * * ps -ef >> /tmp/ps_result`

---
14. Programa una tarea en el sistema que se lance de lunes a viernes a las 9 de la mañana durante los meses de verano (julio, agosto y septiembre) que escriba en un fichero la hora actual (comando `date`, aunque tienes que mirar la ayuda para elegir un formato comprensible) seguido del listado de usuarios que hay conectados en ese momento en el sistema (comando `who`)
---
```bash
crontab -l
```
Añades:
`0 9 * 7-9 1-5 echo "$(date '+%Y-%m-%d %H:%M:%S') - $(who)" >> /ruta/a/log.txt`

---
15. El servicio `cron` se ayuda de una serie de ficheros y directorios que se encuentran en el directorio `/etc`. Explica la función de cada uno de los siguientes ficheros/directorios:
    - `cron.d`:
    ---
    Es similar a /etc/crontab, contiene archivos de tareas programadas.
    ---
    - `cron.allow`:
    ---
    Si existe el archivo, solo los usuarios que esten dentro pueden crear, editar o borrar tareas programadas.

    ---
    - `cron.deny`:
    ---
    Los usuarios que esten dentro de este archivo no pueden crear, editar o borrar tareas programadas.

    ---
    - `cron.daily`:
    ---
    Se almacenan scripts que se ejecutan diariamente.
    ---
    - `cron.hourly`:
    ---
    Se almacenan scripts que se ejecutan cada hora.
    ---
    - `cron.monthly`:
    ---
    Se almacenan scripts que se ejecutan mensualmente.
    ---
[VOLVER A INICIO](../../../index.md)