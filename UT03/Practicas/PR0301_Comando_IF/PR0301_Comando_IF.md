
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

echo "Introduce un número"
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

```
Y ejecutamos el script:
```bash
root@dsaserver:/home/usuario# ./script.sh
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

```
Y ejecutamos el script:
```bash
root@dsaserver:/home/usuario# ./script.sh
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

```
Y ejecutamos el script:
```bash
root@dsaserver:/home/usuario# ./script.sh
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

```
Y ejecutamos el script:
```bash
root@dsaserver:/home/usuario# ./script.sh
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

```
Y ejecutamos el script:
```bash
root@dsaserver:/home/usuario# ./script.sh
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

```
Y ejecutamos el script:
```bash
root@dsaserver:/home/usuario# ./script.sh
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

```
Y ejecutamos el script:
```bash
root@dsaserver:/home/usuario# ./script.sh
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

```
Y ejecutamos el script:
```bash
root@dsaserver:/home/usuario# ./script.sh
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

```
Y ejecutamos el script:
```bash
root@dsaserver:/home/usuario# ./script.sh
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

```
Y ejecutamos el script:
```bash
root@dsaserver:/home/usuario# ./script.sh
```

---

[VOLVER A INICIO](../../../index.md)