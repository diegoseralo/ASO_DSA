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
$sys = "Windows Server"
$sys.ToUpper()
```

Y lo ejecutas y veras algo asi en el terminal:

```shell
PS C:\Users\HP\Desktop\ASO_DSA> . 'C:\Users\HP\Desktop\ASO_DSA\UT06\Practicas\mi_script.ps1'
WINDOWS SERVER
```

---

**2.** Normalizar a minúsculas

  * **Entrada:** `$user = "ADMINISTRATOR"`
  * **Salida:** `administrator`

---

Editas el script y lo dejas asi:

```shell
$user = "ADMINISTRATOR"
$user.ToLower()
```

Y lo ejecutas y veras algo asi en el terminal:

```shell
PS C:\Users\HP\Desktop\ASO_DSA> . 'C:\Users\HP\Desktop\ASO_DSA\UT06\Practicas\mi_script.ps1'
administrator
```

---

**3.** Limpieza de espacios extremos

  * **Entrada:** `$ip = " 192.168.1.10 "`
  * **Salida:** `192.168.1.10`

---

Editas el script y lo dejas asi:

```shell
$ip = " 192.168.1.10 "
$ip.Trim()
```

Y lo ejecutas y veras algo asi en el terminal:

```shell
PS C:\Users\HP\Desktop\ASO_DSA> . 'C:\Users\HP\Desktop\ASO_DSA\UT06\Practicas\mi_script.ps1'
192.168.1.10
```

---

**4.** Eliminación total de espacios

  * **Entrada:** `$mac = "00 AA 11 BB 22 CC"`
  * **Salida:** `00AA11BB22CC`

---

Editas el script y lo dejas asi:

```shell
$mac = "00 AA 11 BB 22 CC"
$mac.Replace(" ", "")
```

Y lo ejecutas y veras algo asi en el terminal:

```shell
PS C:\Users\HP\Desktop\ASO_DSA> . 'C:\Users\HP\Desktop\ASO_DSA\UT06\Practicas\mi_script.ps1'
00AA11BB22CC
```

---

**5.** Longitud de la cadena

  * **Entrada:** `$pass = "P@ssw0rd123"`
  * **Salida:** `11`

---

Editas el script y lo dejas asi:

```shell
$pass = "P@ssw0rd123"
$pass.Length
```

Y lo ejecutas y veras algo asi en el terminal:

```shell
PS C:\Users\HP\Desktop\ASO_DSA> . 'C:\Users\HP\Desktop\ASO_DSA\UT06\Practicas\mi_script.ps1'
11
```

---

## Ejercicio 2: Reemplazo y sustitución

**6.** Cambio de separadores de fecha

  * **Entrada:** `$fecha = "2023.10.05"`
  * **Salida:** `2023-10-05`

---

Editas el script y lo dejas asi:

```shell
$fecha = "2023.10.05"
$fecha.Replace(".", "-")
```

Y lo ejecutas y veras algo asi en el terminal:

```shell
PS C:\Users\HP\Desktop\ASO_DSA> . 'C:\Users\HP\Desktop\ASO_DSA\UT06\Practicas\mi_script.ps1'
2023-10-05
```

---

**7.** Actualización de dominio

  * **Entrada:** `$web = "www.miempresa.es"`
  * **Salida:** `www.miempresa.com`

---

Editas el script y lo dejas asi:

```shell
$web = "www.miempresa.es"
$web.Replace(".es", ".com")
```

Y lo ejecutas y veras algo asi en el terminal:

```shell
PS C:\Users\HP\Desktop\ASO_DSA> . 'C:\Users\HP\Desktop\ASO_DSA\UT06\Practicas\mi_script.ps1'
www.miempresa.com
```

---

**8.** Censura de datos

  * **Entrada:** `$tarjeta = "1234-5678-9012-3456"`
  * **Salida:** `1234-5678-9012-XXXX`

---

Editas el script y lo dejas asi:

```shell
$tarjeta = "1234-5678-9012-3456"
$tarjeta.Replace("3456", "XXXX")
```

Y lo ejecutas y veras algo asi en el terminal:

```shell
PS C:\Users\HP\Desktop\ASO_DSA> . 'C:\Users\HP\Desktop\ASO_DSA\UT06\Practicas\mi_script.ps1'
1234-5678-9012-XXXX
```

---

**9.** Cambio de barra de rutas (Linux a Windows)

  * **Entrada:** `$rutaLinux = "/home/usuario/docs"`
  * **Salida:** `\home\usuario\docs`

---

Editas el script y lo dejas asi:

```shell
$rutaLinux = "/home/usuario/docs"
$rutaLinux.Replace("/", "\")
```

Y lo ejecutas y veras algo asi en el terminal:

```shell
PS C:\Users\HP\Desktop\ASO_DSA> . 'C:\Users\HP\Desktop\ASO_DSA\UT06\Practicas\mi_script.ps1'
\home\usuario\docs
```

---

**10.** Doble reemplazo (limpiar prefijo y sufijo)

  * **Entrada:** `$valor = "(Software)"`
  * **Salida:** `Software`
    *(Pista: Puedes encadenar dos `.Replace()` seguidos)*

---

Editas el script y lo dejas asi:

```shell
$valor = "(Software)"
$valor.Replace("(", "").Replace(")", "")
```

Y lo ejecutas y veras algo asi en el terminal:

```shell
PS C:\Users\HP\Desktop\ASO_DSA> . 'C:\Users\HP\Desktop\ASO_DSA\UT06\Practicas\mi_script.ps1'
Software
```

---

## Ejercicio 3: Extracción por posición

**11.** Extraer prefijo de país

  * **Entrada:** `$tlf = "+34-600111222"`
  * **Salida:** `+34`

---

Editas el script y lo dejas asi:

```shell
$tlf = "+34-600111222"
$tlf.Substring(0,3)
```

Y lo ejecutas y veras algo asi en el terminal:

```shell
PS C:\Users\HP\Desktop\ASO_DSA> . 'C:\Users\HP\Desktop\ASO_DSA\UT06\Practicas\mi_script.ps1'
+34
```

---

**12.** Extraer año fiscal (primeros 4 caracteres)

  * **Entrada:** `$codigo = "2024-FACTURA-SEP"`
  * **Salida:** `2024`

---

Editas el script y lo dejas asi:

```shell
$codigo = "2024-FACTURA-SEP"
$codigo.Substring(0,4)
```

Y lo ejecutas y veras algo asi en el terminal:

```shell
PS C:\Users\HP\Desktop\ASO_DSA> . 'C:\Users\HP\Desktop\ASO_DSA\UT06\Practicas\mi_script.ps1'
2024
```

---

**13.** Ignorar el primer carácter

  * **Entrada:** `$idEmpleado = "E55421"`
  * **Salida:** `55421`

---

Editas el script y lo dejas asi:

```shell
$idEmpleado = "E55421"
$idEmpleado.Substring(1)
```

Y lo ejecutas y veras algo asi en el terminal:

```shell
PS C:\Users\HP\Desktop\ASO_DSA> . 'C:\Users\HP\Desktop\ASO_DSA\UT06\Practicas\mi_script.ps1'
55421
```

---

**14.** Extraer extensión de archivo (últimos 3)

  * **Entrada:** `$fichero = "informe.pdf"`
  * **Salida:** `pdf`

---

Editas el script y lo dejas asi:

```shell
$fichero = "informe.pdf"
$fichero.Substring($fichero.Length - 3)
```

Y lo ejecutas y veras algo asi en el terminal:

```shell
PS C:\Users\HP\Desktop\ASO_DSA> . 'C:\Users\HP\Desktop\ASO_DSA\UT06\Practicas\mi_script.ps1'
pdf
```

---

**15.** Relleno de ceros (Padding)

  * **Entrada:** `$numero = "7"`
  * **Salida:** `007`

---

Editas el script y lo dejas asi:

```shell
$numero = "7"
$numero.PadLeft(3, '0')
```

Y lo ejecutas y veras algo asi en el terminal:

```shell
PS C:\Users\HP\Desktop\ASO_DSA> . 'C:\Users\HP\Desktop\ASO_DSA\UT06\Practicas\mi_script.ps1'
007
```

---

## Ejercicio 4: Troceado (Split) y arrays

**16.** Obtener nombre de usuario desde email

  * **Entrada:** `$email = "pepe.garcia@empresa.com"`
  * **Salida:** `pepe.garcia`

---

Editas el script y lo dejas asi:

```shell
$email = "pepe.garcia@empresa.com"
$email.Split("@")[0]
```

Y lo ejecutas y veras algo asi en el terminal:

```shell
PS C:\Users\HP\Desktop\ASO_DSA> . 'C:\Users\HP\Desktop\ASO_DSA\UT06\Practicas\mi_script.ps1'
pepe.garcia
```

---

**17.** Obtener dominio desde email

  * **Entrada:** `$email = "pepe.garcia@empresa.com"`
  * **Salida:** `empresa.com`

---

Editas el script y lo dejas asi:

```shell
$email.Split("@")[1]
```

Y lo ejecutas y veras algo asi en el terminal:

```shell
PS C:\Users\HP\Desktop\ASO_DSA> . 'C:\Users\HP\Desktop\ASO_DSA\UT06\Practicas\mi_script.ps1'
empresa.com
```

---

**18.** Obtener nombre de archivo de una ruta larga

  * **Entrada:** `$path = "C:\Users\Admin\Downloads\instaler.msi"`
  * **Salida:** `instaler.msi`

---

Editas el script y lo dejas asi:

```shell
$path = "C:\Users\Admin\Downloads\instaler.msi"
$path.Split("\")[-1]
```

Y lo ejecutas y veras algo asi en el terminal:

```shell
PS C:\Users\HP\Desktop\ASO_DSA> . 'C:\Users\HP\Desktop\ASO_DSA\UT06\Practicas\mi_script.ps1'
instaler.msi
```

---

**19.** Obtener letra de unidad

  * **Entrada:** `$path = "D:\Datos\Backups"`
  * **Salida:** `D:`

---

Editas el script y lo dejas asi:

```shell
$path = "D:\Datos\Backups"
$path.Substring(0,2)
```

Y lo ejecutas y veras algo asi en el terminal:

```shell
PS C:\Users\HP\Desktop\ASO_DSA> . 'C:\Users\HP\Desktop\ASO_DSA\UT06\Practicas\mi_script.ps1'
D:
```

---

**20.** Separar CSV manual

  * **Entrada:** `$linea = "Juan;Marketing;Madrid"`
  * **Salida:** Muestra solo `Marketing`

---

Editas el script y lo dejas asi:

```shell
$linea = "Juan;Marketing;Madrid"
$linea.Split(";")[1]
```

Y lo ejecutas y veras algo asi en el terminal:

```shell
PS C:\Users\HP\Desktop\ASO_DSA> . 'C:\Users\HP\Desktop\ASO_DSA\UT06\Practicas\mi_script.ps1'
Marketing
```

---

## Ejercicio 5: Aplicaciones prácticas

**21.** Detección de usuario Admin (Boolean). Devuelve `True` si empieza por "ADM", `False` si no.

  * **Entrada:** `$u = "ADM_Lopez"`
  * **Salida:** `True`

---

Editas el script y lo dejas asi:

```shell
$u = "ADM_Lopez"
$u.StartsWith("ADM")
```

Y lo ejecutas y veras algo asi en el terminal:

```shell
PS C:\Users\HP\Desktop\ASO_DSA> . 'C:\Users\HP\Desktop\ASO_DSA\UT06\Practicas\mi_script.ps1'
True
```

---

**22.** Formato de nombre propio. Convierte la primera letra en mayúscula y el resto en minúscula.

  * **Entrada:** `$nombre = "JAVIER"`
  * **Salida:** `Javier`

---

Editas el script y lo dejas asi:

```shell
$nombre = "JAVIER"
$nombre.Substring(0,1).ToUpper() + $nombre.Substring(1).ToLower()
```

Y lo ejecutas y veras algo asi en el terminal:

```shell
PS C:\Users\HP\Desktop\ASO_DSA> . 'C:\Users\HP\Desktop\ASO_DSA\UT06\Practicas\mi_script.ps1'
Javier
```

---

**23.** Limpieza de Distinguished Name (AD). Extrae el nombre común (CN).

  * **Entrada:** `$dn = "CN=Beatriz,OU=Ventas,DC=dominio,DC=local"`
  * **Salida:** `Beatriz`

---

Editas el script y lo dejas asi:

```shell
$dn = "CN=Beatriz,OU=Ventas,DC=dominio,DC=local"
$dn.Split(",")[0].Replace("CN=", "")
```

Y lo ejecutas y veras algo asi en el terminal:

```shell
PS C:\Users\HP\Desktop\ASO_DSA> . 'C:\Users\HP\Desktop\ASO_DSA\UT06\Practicas\mi_script.ps1'
Beatriz
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
$n = "Fernando"
$a = "Alonso"
$n.Substring(0,1) + "." + $a.Substring(0,1) + "."
```

Y lo ejecutas y veras algo asi en el terminal:

```shell
PS C:\Users\HP\Desktop\ASO_DSA> . 'C:\Users\HP\Desktop\ASO_DSA\UT06\Practicas\mi_script.ps1'
F.A.
```

---

**25.** Inversión de fecha. Transforma formato europeo a formato base de datos ISO (YYYYMMDD) sin guiones.

  * **Entrada:** `$euDate = "31-12-2023"`
  * **Salida:** `20231231`

---

Editas el script y lo dejas asi:

```shell
$euDate = "31-12-2023"
$partes = $euDate.Split("-")
$partes[2] + $partes[1] + $partes[0]
```

Y lo ejecutas y veras algo asi en el terminal:

```shell
PS C:\Users\HP\Desktop\ASO_DSA> . 'C:\Users\HP\Desktop\ASO_DSA\UT06\Practicas\mi_script.ps1'
20231231
```

---

[VOLVER A INICIO](../../../index.md)