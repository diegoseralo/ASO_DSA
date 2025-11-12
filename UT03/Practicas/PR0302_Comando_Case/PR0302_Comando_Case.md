# PR0302: Ejercicios comando `case`


Realiza las siguientes tareas:

### Ejercicio 1: Menú de operaciones matemáticas

Crea un script que presente un menú con las operaciones básicas (suma, resta, multiplicación, división) y solicite al usuario que elija una operación. El script debe ejecutar la operación seleccionada utilizando `case`.

---

Creamos un archivo llamado `script.sh` y le añadimos permiso de ejecucion a el usuario.
```bash
root@dsaserver:/home/usuario# touch script.sh
root@dsaserver:/home/usuario# chmod u+x script.sh
```
Después, editamos el archivo con `nano` y añadiremos:
```bash
#!/bin/bash

echo "Selecciona una operacion:"
echo "1) Suma"
echo "2) Resta"
echo "3) Multiplicacion"
echo "4) Division"
read -p "Opcion: " opcion

read -p "Introduce el primer numero: " num1
read -p "Introduce el segundo numero: " num2

case $opcion in
    1)
        resultado=$((num1 + num2))
        echo "La suma es: $resultado";;
    2)
        resultado=$((num1 - num2))
        echo "La resta es: $resultado";;
    3)
        resultado=$((num1 * num2))
        echo "La multiplicacion es: $resultado";;
    4)
        resultado=$((num1 / num2))
        echo "La division es: $resultado";;
    *)
        echo "Opcion no valida";;
esac
```
Y ejecutamos el script:
```bash
root@dsaserver:/home/usuario# ./script.sh
Selecciona una operacion:
1) Suma
2) Resta
3) Multiplicacion
4) Division
Opcion: 1
Introduce el primer numero: 5
Introduce el segundo numero: 6
La suma es: 11
```

---

### Ejercicio 2: Identificación de extensión de archivo

Haz un script que solicite al usuario un nombre de archivo y, usando `case`, determine si es un archivo de texto (.txt), un archivo comprimido (.zip o .tar.gz), o cualquier otro tipo de archivo.

---
Editamos el archivo `script.sh`:
```bash
root@dsaserver:/home/usuario# nano script.sh
```
Y lo editas asi:
```bash
#!/bin/bash

read -p "Introduce el nombre del archivo: " archivo

case $archivo in
    *.txt)
        echo "Es un archivo de texto";;
    *.zip)
        echo "Es un archivo comprimido ZIP";;
    *.tar.gz)
        echo "Es un archivo comprimido TAR GZ";;
    *)
        echo "Tipo de archivo desconocido";;
esac
```
Y ejecutamos el script:
```bash
root@dsaserver:/home/usuario# ./script.sh
Introduce el nombre del archivo: hola.txt
Es un archivo de texto
```

---

### Ejercicio 3: Conversor de unidades

Crea un script que ofrezca un menú para convertir entre diferentes unidades de longitud (metros a kilómetros, pies a metros, etc.) utilizando `case` para gestionar las conversiones.

---
Editamos el archivo `script.sh`:
```bash
root@dsaserver:/home/usuario# nano script.sh
```
Y lo editas asi:
```bash
#!/bin/bash

echo "Conversor de unidades:"
echo "1) Metros a kilometros"
echo "2) Kilometros a metros"
echo "3) Pies a metros"
echo "4) Metros a pies"
read -p "Selecciona una opcion: " opcion

read -p "Introduce el valor a convertir: " valor

case $opcion in
    1)
       resultado=$( echo "$valor / 1000" | bc -l)
       echo "$valor metros = $resultado kilometros";;
    2)
       resultado=$( echo "$valor * 1000" | bc -l)
      echo "$valor kilometros = $resultado metros";;
    3)
      resultado=$( echo "$valor * 0.3048" | bc -l)
     echo "$valor pies = $resultado metros";;
    4)
      resultado=$( echo "$valor / 0.3048" | bc -l)
      echo "$valor metros = $resultado pies";;
    *)
        echo "Opcion no valida";;
esac
```
Y ejecutamos el script:
```bash
root@dsaserver:/home/usuario# ./script.sh
Conversor de unidades:
1) Metros a kilometros
2) Kilometros a metros
3) Pies a metros
4) Metros a pies
Selecciona una opcion: 3
Introduce el valor a convertir: 456
456 pies = 138.9888 metros
```

---

### Ejercicio 4: Menú de configuración del sistema

Realiza un script que presente un menú con varias opciones de configuración del sistema: por ejemplo, apagar, reiniciar o cerrar sesión. Usa `case` para gestionar las opciones seleccionadas.

---
Editamos el archivo `script.sh`:
```bash
root@dsaserver:/home/usuario# nano script.sh
```
Y lo editas asi:
```bash
#!/bin/bash

echo "Menu de configuracion del sistema"
echo "1) Apagar"
echo "2) Reiniciar"
echo "3) Cerrar sesion"
read -p "Selecciona una opcion: " opcion

case $opcion in
    1)
       sudo shutdown -h now;;
    2)
      sudo reboot;;
    3)
        pkill -9 -u $USER;;
    *)
        echo "Opcion no valida";;
esac
```
Y ejecutamos el script:
```bash
root@dsaserver:/home/usuario# ./script.sh
Menu de configuracion del sistema
1) Apagar
2) Reiniciar
3) Cerrar sesion
Selecciona una opcion: 3
Killed
usuario@DSA-SERVER:~$
```

---

### Ejercicio 5: Día de la semana

Haz un script que solicite un número entre 1 y 7 al usuario y muestre el nombre del día correspondiente (1 para lunes, 2 para martes, etc.) utilizando case.

---
Editamos el archivo `script.sh`:
```bash
root@dsaserver:/home/usuario# nano script.sh
```
Y lo editas asi:
```bash
#!/bin/bash

read -p "Introduce un numero del 1 al 7: " dia

case $dia in
    1)
        echo "Lunes" ;;
    2)
        echo "Martes" ;;
    3)
        echo "Miercoles" ;;
    4)
        echo "Jueves" ;;
    5)
        echo "Viernes" ;;
    6)
        echo "Sabado" ;;
    7)
        echo "Domingo" ;;
    *)
        echo "Numero invalido. Debe ser entre 1 y 7." ;;
esac
```
Y ejecutamos el script:
```bash
root@dsaserver:/home/usuario# ./script.sh
Introduce un numero del 1 al 7: 3
Miercoles
```

---

### Ejercicio 6: Clasificación de notas

Realiza un script que solicite una calificación numérica y, usando `case`, la clasifique como "Sobresaliente", "Notable", "Aprobado", o "Suspenso" según el rango de valores.

---
Editamos el archivo `script.sh`:
```bash
root@dsaserver:/home/usuario# nano script.sh
```
Y lo editas asi:
```bash
#!/bin/bash

read -p "Introduce tu nota (0-10): " nota

case $nota in
    9|10)
        echo "Sobresaliente";;
    7|8)
        echo "Notable";;
    5|6)
        echo "Aprobado";;
    [0-4])
        echo "Suspenso";;
    *)
        echo "Valor no valido";;
esac
```
Y ejecutamos el script:
```bash
root@dsaserver:/home/usuario# ./script.sh
Introduce tu nota (0-10): 4
Suspenso
```

---

### Ejercicio 7: Clasificación de números

Haz un script que solicite un número y lo clasifique como "Positivo", "Negativo" o "Cero".

---
Editamos el archivo `script.sh`:
```bash
root@dsaserver:/home/usuario# nano script.sh
```
Y lo editas asi:
```bash
#!/bin/bash

read -p "Introduce un numero: " num

case $num in
    -*)
        echo "$num es menor que 0";;
    0)
        echo "$num es igual a 0";;
    *)
        echo "$num es mayor que 0";;
esac
```
Y ejecutamos el script:
```bash
root@dsaserver:/home/usuario# ./script.sh
Introduce un numero: -5
-5 es menor que 0
```

---

### Ejercicio 8: Control de servicios en Linux

Crea un script que pregunte por el nombre de un servicio y luego presente un menú para iniciar, detener o reiniciar un servicio en Linux (como `apache2` o `nginx`). Usa `case` para gestionar las opciones y los comandos correspondientes (`systemctl start`, `stop`, `restart`).

Después de realizar la operación solicitada comprueba su código de estado de finalización (recuerda que puedes obtener el estado de finalización de un comando con la variable `$?` tras ejecutarlo) y muestra un mensaje indicando si la operación se ha realizado correctamente o no.

---
Editamos el archivo `script.sh`:
```bash
root@dsaserver:/home/usuario# nano script.sh
```
Y lo editas asi:
```bash
#!/bin/bash

read -p "Introduce el nombre del servicio: " servicio

echo "Selecciona una opcion:"
echo "1) Iniciar servicio"
echo "2) Detener servicio"
echo "3) Reiniciar servicio"
read -p "Opcion: " opcion

case $opcion in
        1)
                sudo systemctl start $servicio;;
        2)
                sudo systemctl stop $servicio;;
        3)
                sudo systemctl restart $servicio;;
        *)
                echo "Opcion no valida";;
esac

if [ $? -eq 0 ]; then
  echo "La operacion se ha realizado correctamente."
else
  echo "Error al ejecutar la operacion sobre el servicio $servicio."
fi
```
Y ejecutamos el script:
```bash
root@dsaserver:/home/usuario# ./script.sh
Introduce el nombre del servicio: ssh
Selecciona una opcion:
1) Iniciar servicio
2) Detener servicio
3) Reiniciar servicio
Opcion: 3
La operacion se ha realizado correctamente.
```

---

[VOLVER A INICIO](../../../index.md)