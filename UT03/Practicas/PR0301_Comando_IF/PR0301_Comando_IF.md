
# PR0302: Ejercicios condicional `if`

# PR0301: Condicional `if`



Realiza las siguientes tareas:

## Ejercicio 1: Comprobación de número par o impar

Escribe un script que solicite al usuario un número y determine si es par o impar utilizando una estructura if.

---

Creamos un archivo llamado `script.sh` y le añadimos permiso de ejecucion a el usuario.
```bash
root@dsaserver:/home/usuario# touch script.sh
root@dsaserver:/home/usuario# chmod u+x script.sh
```
Después, editamos el archivo con `nano` y añadiremos:
```bash
#!/bin/bash

echo -n "Introduce un número: "
read num
if [ $((num % 2)) -eq 0 ]
then
        echo "El número es par"
else
        echo "El número es impar"
fi
```
Y ejecutamos el script:
```bash
root@dsaserver:/home/usuario# ./script.sh
Introduce un número: 5
El número es impar
```
---

## Ejercicio 2: Verificación de archivo

Crea un script que compruebe si un archivo (cuya ruta pedirá al usuario por teclado) existe y si tiene permisos de lectura. Muestra un mensaje adecuado para cada caso.

---
Editamos el archivo `script.sh`:
```bash
root@dsaserver:/home/usuario# nano script.sh
```
Y lo editas asi:
```bash
#!/bin/bash

echo -n "Introduce la ruta del archivo: "
read ruta
if [ -f $ruta ]
then
       if [ -r $ruta ]
        then
                echo "Existe el fichero y tiene permiso de lectura"
        else
                echo "Existe el fichero pero no tiene permiso de lectura"
        fi
else
        echo "No existe el archivo o la ruta esta mal escrita"
fi
```
Y ejecutamos el script:
```bash
root@dsaserver:/home/usuario# ./script.sh
Introduce la ruta del archivo: /home/usuario/script.sh
Existe el fichero y tiene permiso de lectura
```

---

## Ejercicio 3: Comparación de dos números

Realiza un script que solicite dos números al usuario y los compare, mostrando cuál es mayor, o si son iguales.

---
Editamos el archivo `script.sh`:
```bash
root@dsaserver:/home/usuario# nano script.sh
```
Y lo editas asi:
```bash
#!/bin/bash

echo -n "Introduce un número: "
read num1
echo -n "Introduce otro número: "
read num2

if [ $num1 -gt $num2 ]
then
        echo "$num1 es mayor que $num2"
elif [ $num1 -lt $num2 ]
then
        echo "$num1 es menor que $num2"
else
        echo "$num1 es igual a $num2"
fi
```
Y ejecutamos el script:
```bash
root@dsaserver:/home/usuario# ./script.sh
Introduce un número: 3
Introduce otro número: 2
3 es mayor que 2
```

---

## Ejercicio 4: Validación de contraseña

Escribe un script que solicite al usuario una contraseña y verifique si coincide con una contraseña predefinida (que estará almacenada en una variable de tu script). Si es correcta, muestra un mensaje de éxito, de lo contrario, indica que es incorrecta.

---
Editamos el archivo `script.sh`:
```bash
root@dsaserver:/home/usuario# nano script.sh
```
Y lo editas asi:
```bash
#!/bin/bash

pass=1234

echo -n "Introduce la contraseña predefinida: "
read cntr

if [ $cntr == $pass ]
then
        echo "La contraseña es correcta"
else
        echo "La contraseña es incorrecta"
fi
```
Y ejecutamos el script:
```bash
root@dsaserver:/home/usuario# ./script.sh
Introduce la contraseña predefinida: 1234
La contraseña es correcta
```

---

## Ejercicio 5: Comprobación de directorio

Crea un script que compruebe si un directorio existe y si tiene permisos de escritura. Si el directorio no existe, crea uno nuevo.

---
Editamos el archivo `script.sh`:
```bash
root@dsaserver:/home/usuario# nano script.sh
```
Y lo editas asi:
```bash
#!/bin/bash

echo -n "Introduce la ruta del archivo: "
read ruta
if [ -d $ruta ]
then
       if [ -w $ruta ]
        then
                echo "Existe el directorio y tiene permiso de escritura"
        else
                echo "Existe el directorio pero no tiene permiso de escritura"
        fi
else
        mkdir -m u+w $ruta
        echo "Directorio creado con permisos de escritura"
fi
```
Y ejecutamos el script:
```bash
root@dsaserver:/home/usuario# ./script.sh
Introduce la ruta del archivo: Directorio1
Existe el directorio y tiene permiso de escritura
```

---

## Ejercicio 6: Verificar si el usuario es root

Haz un script que verifique si el script está siendo ejecutado por el usuario root, mostrando un mensaje diferente si no lo es.

---
Editamos el archivo `script.sh`:
```bash
root@dsaserver:/home/usuario# nano script.sh
```
Y lo editas asi:
```bash
#!/bin/bash

if [ $USER == root ]
then
       echo "Eres el usuario root"
else
        echo "Permiso denegado, tienes que ser el usuario root"
fi
```
Y ejecutamos el script:
```bash
usuario@dsaserver:~$ ./script.sh
Permiso denegado, tienes que ser el usuario root
```

---

## Ejercicio 7: Calificación de un examen

Realiza un script que pida una nota numérica y determine si es "Aprobado" (5 o más) o "Suspenso" (menos de 5).

---
Editamos el archivo `script.sh`:
```bash
root@dsaserver:/home/usuario# nano script.sh
```
Y lo editas asi:
```bash
#!/bin/bash

echo -n "Introduce tu nota: "
read nota
if [ $nota -ge 5 ]
then
        if [ $nota -gt 10 ]
        then
                echo "Introduce una nota correcta"
        else
                echo "Aprobado"
        fi
else
        if [ $nota -lt 0 ]
        then
                echo "Introduce una nota correcta"
        else
                echo "Suspenso"
        fi
fi
```
Y ejecutamos el script:
```bash
root@dsaserver:/home/usuario# ./script.sh
Introduce tu nota: 5
Aprobado
```

---

## Ejercicio 8: Comprobación del espacio en disco

Crea un script que compruebe el espacio libre en disco. Si el espacio es inferior al 10%, muestra un mensaje de advertencia.

---
Editamos el archivo `script.sh`:
```bash
root@dsaserver:/home/usuario# nano script.sh
```
Y lo editas asi:
```bash
#!/bin/bash

esp=$(df -h / | tail -1 | cut -d " " -f 9)
por=$( df -h / | tail -1 | cut -d " " -f 11 | cut -d "%" -f 1)

if [ $por -lt 90 ]
then
        echo "El espacio libre del disco son $esp"
else

        echo "Cuidado, tienes solo $esp libre"
fi
```
Y ejecutamos el script:
```bash
root@dsaserver:/home/usuario# ./script.sh
El espacio libre del disco son 16G
```

---

## Ejercicio 9: Menú de opciones

Escribe un script que muestre un menú con tres opciones. El usuario debe introducir una opción y el script debe ejecutar una acción diferente dependiendo de la opción seleccionada (es suficiente con que muestre un mensaje diferente según la opción escogida)

---
Editamos el archivo `script.sh`:
```bash
root@dsaserver:/home/usuario# nano script.sh
```
Y lo editas asi:
```bash
#!/bin/bash

echo "Bienvenido al menu, seleccione una opción (Introduzca solo el número de la opción)"
echo "1) Opción 1"
echo "2) Opción 2"
echo "3) Opción 3"
read opc
if [ $opc -eq 1 ]
then
        echo "Has escogido la opción 1"
elif [ $opc -eq 2 ]
then
        echo "Has escogido la opción 2"
elif [ $opc -eq 3 ]
then
        echo "Has escogido la opción 3"
else
        echo "Opción incorrecta"
fi
```
Y ejecutamos el script:
```bash
root@dsaserver:/home/usuario# ./script.sh
Bienvenido al menu, seleccione una opción (Introduzca solo el número de la opción)
1) Opción 1
2) Opción 2
3) Opción 3
1
Has escogido la opción 1
```

---

## Ejercicio 10: Evaluación de edad

Haz un script que solicite al usuario su edad y determine si es menor, adulto o mayor de edad, según un umbral predefinido (por ejemplo, menor de 18, entre 18 y 65, y mayor de 65).

---
Editamos el archivo `script.sh`:
```bash
root@dsaserver:/home/usuario# nano script.sh
```
Y lo editas asi:
```bash
#!/bin/bash

echo -n "Buenas, introduzca su edad: "
read edad
if [ $edad -lt 18 ] && [ $edad -gt 0 ]
then
        echo "Aun eres menor de edad"
elif [ $edad -ge 18 ] && [ $edad -lt 35 ]
then
        echo "Eres Joven"
elif [ $edad -ge 35 ] && [ $edad -lt 65 ]
then
        echo "Ya eres un adulto"
elif [ $edad -ge 65 ] && [ $edad -lt 120 ]
then
        echo "Usted ya esta mayor"
else
        echo "Introduzca una edad real"
fi
```
Y ejecutamos el script:
```bash
root@dsaserver:/home/usuario# ./script.sh
Buenas, introduzca su edad: 20
Eres Joven
```

---

## Ejercicio 11: Contar líneas de un archivo

Escribe un script que solicite el nombre de un archivo y luego imprima cuántas líneas tiene ese archivo. Verifica que el archivo exista antes de contar las líneas.

---
Editamos el archivo `script.sh`:
```bash
root@dsaserver:/home/usuario# nano script.sh
```
Y lo editas asi:
```bash
#!/bin/bash

echo -n "Introduzca la ruta del archivo: "
read arch
if  [ -f $arch ]
then
        echo "El archivo $arch tiene $(wc -l $arch | cut -d ' ' -f 1) líneas."
else
        echo "El archivo no existe"
fi
```
Y ejecutamos el script:
```bash
root@dsaserver:/home/usuario# ./script.sh
Introduzca la ruta del archivo: script.sh
El archivo script.sh tiene 10 líneas.
```

---

[VOLVER A INICIO](../../../index.md)