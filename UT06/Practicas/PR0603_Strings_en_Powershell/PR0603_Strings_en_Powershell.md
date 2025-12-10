```
---------------- ADMINISTRACIÓN DE SISTEMAS INFORMÁTICOS Y REDES ----------------
---------------------------------------------------------------------------------

Módulo:                     ADMINISTRACIÓN DE SISTEMAS OPERATIVOS
Profesor:                   Víctor J. González
Unidad de Trabajo:          UT06
Práctica:                   PR0603. Manipulación de cadenas
Resultados de aprendizaje:  RA7
```

# PR0603: Manipulación de cadenas

En cada uno de los ejercicios se indica la cadena de entrada y la salida esperada. Debes indicar el comando o comandos necesarios para transformar la entrada en la salida.

---

Crea un archivo con extension `.ps1` para hacer los scripts:

---

## Ejercicio 1: Limpieza básica (mayúsculas, minúsculas y espacios)

**1.** Normalizar a mayúsculas

  * **Entrada:** `$sys = "Windows Server"`
  * **Salida:** `WINDOWS SERVER`

---

Editas el script y lo dejas asi:

```shell

```

Y lo ejecutas desde el powershell en el directorio donde esta el script y te devolvera:

```shell

```

---

**2.** Normalizar a minúsculas

  * **Entrada:** `$user = "ADMINISTRATOR"`
  * **Salida:** `administrator`

---

Editas el script y lo dejas asi:

```shell

```

Y lo ejecutas desde el powershell en el directorio donde esta el script y te devolvera:

```shell

```

---

**3.** Limpieza de espacios extremos

  * **Entrada:** `$ip = " 192.168.1.10 "`
  * **Salida:** `192.168.1.10`

---

Editas el script y lo dejas asi:

```shell

```

Y lo ejecutas desde el powershell en el directorio donde esta el script y te devolvera:

```shell

```

---

**4.** Eliminación total de espacios

  * **Entrada:** `$mac = "00 AA 11 BB 22 CC"`
  * **Salida:** `00AA11BB22CC`

---

Editas el script y lo dejas asi:

```shell

```

Y lo ejecutas desde el powershell en el directorio donde esta el script y te devolvera:

```shell

```

---

**5.** Longitud de la cadena

  * **Entrada:** `$pass = "P@ssw0rd123"`
  * **Salida:** `11`

---

Editas el script y lo dejas asi:

```shell

```

Y lo ejecutas desde el powershell en el directorio donde esta el script y te devolvera:

```shell

```

---

## Ejercicio 2: Reemplazo y sustitución

**6.** Cambio de separadores de fecha

  * **Entrada:** `$fecha = "2023.10.05"`
  * **Salida:** `2023-10-05`

---

Editas el script y lo dejas asi:

```shell

```

Y lo ejecutas desde el powershell en el directorio donde esta el script y te devolvera:

```shell

```

---

**7.** Actualización de dominio

  * **Entrada:** `$web = "www.miempresa.es"`
  * **Salida:** `www.miempresa.com`

---

Editas el script y lo dejas asi:

```shell

```

Y lo ejecutas desde el powershell en el directorio donde esta el script y te devolvera:

```shell

```

---

**8.** Censura de datos

  * **Entrada:** `$tarjeta = "1234-5678-9012-3456"`
  * **Salida:** `1234-5678-9012-XXXX`

---

Editas el script y lo dejas asi:

```shell

```

Y lo ejecutas desde el powershell en el directorio donde esta el script y te devolvera:

```shell

```

---

**9.** Cambio de barra de rutas (Linux a Windows)

  * **Entrada:** `$rutaLinux = "/home/usuario/docs"`
  * **Salida:** `\home\usuario\docs`

---

Editas el script y lo dejas asi:

```shell

```

Y lo ejecutas desde el powershell en el directorio donde esta el script y te devolvera:

```shell

```

---

**10.** Doble reemplazo (limpiar prefijo y sufijo)

  * **Entrada:** `$valor = "(Software)"`
  * **Salida:** `Software`
    *(Pista: Puedes encadenar dos `.Replace()` seguidos)*

---

Editas el script y lo dejas asi:

```shell

```

Y lo ejecutas desde el powershell en el directorio donde esta el script y te devolvera:

```shell

```

---

## Ejercicio 3: Extracción por posición

**11.** Extraer prefijo de país

  * **Entrada:** `$tlf = "+34-600111222"`
  * **Salida:** `+34`

---

Editas el script y lo dejas asi:

```shell

```

Y lo ejecutas desde el powershell en el directorio donde esta el script y te devolvera:

```shell

```

---

**12.** Extraer año fiscal (primeros 4 caracteres)

  * **Entrada:** `$codigo = "2024-FACTURA-SEP"`
  * **Salida:** `2024`

---

Editas el script y lo dejas asi:

```shell

```

Y lo ejecutas desde el powershell en el directorio donde esta el script y te devolvera:

```shell

```

---

**13.** Ignorar el primer carácter

  * **Entrada:** `$idEmpleado = "E55421"`
  * **Salida:** `55421`

---

Editas el script y lo dejas asi:

```shell

```

Y lo ejecutas desde el powershell en el directorio donde esta el script y te devolvera:

```shell

```

---

**14.** Extraer extensión de archivo (últimos 3)

  * **Entrada:** `$fichero = "informe.pdf"`
  * **Salida:** `pdf`

---

Editas el script y lo dejas asi:

```shell

```

Y lo ejecutas desde el powershell en el directorio donde esta el script y te devolvera:

```shell

```

---

**15.** Relleno de ceros (Padding)

  * **Entrada:** `$numero = "7"`
  * **Salida:** `007`

---

Editas el script y lo dejas asi:

```shell

```

Y lo ejecutas desde el powershell en el directorio donde esta el script y te devolvera:

```shell

```

---

## Ejercicio 4: Troceado (Split) y arrays

**16.** Obtener nombre de usuario desde email

  * **Entrada:** `$email = "pepe.garcia@empresa.com"`
  * **Salida:** `pepe.garcia`

---

Editas el script y lo dejas asi:

```shell

```

Y lo ejecutas desde el powershell en el directorio donde esta el script y te devolvera:

```shell

```

---

**17.** Obtener dominio desde email

  * **Entrada:** `$email = "pepe.garcia@empresa.com"`
  * **Salida:** `empresa.com`

---

Editas el script y lo dejas asi:

```shell

```

Y lo ejecutas desde el powershell en el directorio donde esta el script y te devolvera:

```shell

```

---

**18.** Obtener nombre de archivo de una ruta larga

  * **Entrada:** `$path = "C:\Users\Admin\Downloads\instaler.msi"`
  * **Salida:** `instaler.msi`

---

Editas el script y lo dejas asi:

```shell

```

Y lo ejecutas desde el powershell en el directorio donde esta el script y te devolvera:

```shell

```

---

**19.** Obtener letra de unidad

  * **Entrada:** `$path = "D:\Datos\Backups"`
  * **Salida:** `D:`

---

Editas el script y lo dejas asi:

```shell

```

Y lo ejecutas desde el powershell en el directorio donde esta el script y te devolvera:

```shell

```

---

**20.** Separar CSV manual

  * **Entrada:** `$linea = "Juan;Marketing;Madrid"`
  * **Salida:** Muestra solo `Marketing`

---

Editas el script y lo dejas asi:

```shell

```

Y lo ejecutas desde el powershell en el directorio donde esta el script y te devolvera:

```shell

```

---

## Ejercicio 5: Aplicaciones prácticas

**21.** Detección de usuario Admin (Boolean). Devuelve `True` si empieza por "ADM", `False` si no.

  * **Entrada:** `$u = "ADM_Lopez"`
  * **Salida:** `True`

---

Editas el script y lo dejas asi:

```shell

```

Y lo ejecutas desde el powershell en el directorio donde esta el script y te devolvera:

```shell

```

---

**22.** Formato de nombre propio. Convierte la primera letra en mayúscula y el resto en minúscula.

  * **Entrada:** `$nombre = "JAVIER"`
  * **Salida:** `Javier`

---

Editas el script y lo dejas asi:

```shell

```

Y lo ejecutas desde el powershell en el directorio donde esta el script y te devolvera:

```shell

```

---

**23.** Limpieza de Distinguished Name (AD). Extrae el nombre común (CN).

  * **Entrada:** `$dn = "CN=Beatriz,OU=Ventas,DC=dominio,DC=local"`
  * **Salida:** `Beatriz`

---

Editas el script y lo dejas asi:

```shell

```

Y lo ejecutas desde el powershell en el directorio donde esta el script y te devolvera:

```shell

```

---

**24.** Generador de iniciales

  * **Entrada:**
    ```powershell
    $n = "Fernando"
    $a = "Alonso"
    ```
  * **Salida:** `F.A.`

---

Editas el script y lo dejas asi:

```shell

```

Y lo ejecutas desde el powershell en el directorio donde esta el script y te devolvera:

```shell

```

---

**25.** Inversión de fecha. Transforma formato europeo a formato base de datos ISO (YYYYMMDD) sin guiones.

  * **Entrada:** `$euDate = "31-12-2023"`
  * **Salida:** `20231231`

---

Editas el script y lo dejas asi:

```shell

```

Y lo ejecutas desde el powershell en el directorio donde esta el script y te devolvera:

```shell

```

---

