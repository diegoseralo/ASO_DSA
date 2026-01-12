```
---------------- ADMINISTRACIÓN DE SISTEMAS INFORMÁTICOS Y REDES ----------------
---------------------------------------------------------------------------------

Módulo:                     ADMINISTRACIÓN DE SISTEMAS OPERATIVOS
Profesor:                   Víctor J. González
Unidad de Trabajo:          UT06
Práctica:                   PR0607. Limpieza de datos de usuarios
Resultados de aprendizaje:  RA7
```


### 1.- Objetivo

Trabajas como Administrador de Sistemas en la empresa *TechIberia S.L.*. El departamento de Recursos Humanos utiliza una aplicación antigua para registrar a las nuevas incorporaciones.

Cada lunes, RRHH te envía un fichero de texto plano con los datos de los nuevos empleados. Lamentablemente, el formato de salida de su aplicación es caótico: todo está en mayúsculas, los delimitadores son extraños y los campos están mezclados.

Tu objetivo es crear un script en PowerShell que lea estos datos "sucios", los procese utilizando manipulación de cadenas y exporte un archivo CSV limpio y profesional listo para ser importado a Active Directory o Microsoft 365.


### 2. Datos de Entrada

Crea un fichero llamado `nuevos_empleados_raw.txt` con el siguiente contenido exacto (copia y pega):

```text
GARCIA LOPEZ, ANA MARIA|MAD-VENTAS-01|1995/05/12
RUIZ DE LA TORRE, PEDRO|BCN-IT_SOPORTE-02|1988/11/23
O'CONNOR, SARAH JANE|BIO-MARKETING-05|2001/02/15
MARTINEZ, JOSE|SEV-LOGISTICA-09|1999/12/30

```

### 3. Requerimientos técnicos

El script debe leer el fichero línea por línea y realizar las siguientes transformaciones de cadena para cada empleado:

1. **Nombre y apellidos:**
   - El formato original es `APELLIDOS, NOMBRE` en mayúsculas.
   - Debes separarlos y convertirlos a *Title Case* (primera letra mayúscula, resto minúscula).
   - *Ejemplo:* "Ana Maria Garcia Lopez".


2. **Generación de nombre de usuario (SAMAccountName):**
   - Debe formarse con: la **primera letra del nombre** + las **primeras 6 letras del primer apellido**.
   - Todo en minúsculas.
   - Si el apellido tiene menos de 6 letras, no debe dar error, debe coger las que tenga.


3. **Generación de correo electrónico:**
   - Formato: `nombre.apellido@techiberia.com`.
   - Si el nombre o apellido es compuesto, reemplaza los espacios por puntos (ej: `ana.maria.garcia.lopez@techiberia.com`).


4. **Departamento y ubicación:**
   - El código original es `CIUDAD-DEPARTAMENTO-ID`.
   - Debes extraer **solo** el nombre del departamento (lo que está en el medio).
   - Debes limpiar el texto (ej: convertir `IT_SOPORTE` a `It Soporte` o simplemente `IT_SOPORTE`, pero sin la ciudad ni el ID).


5. **Contraseña temporal:**
   - Debe ser la palabra `ChangeMe` + el año de nacimiento + el símbolo `!`.
   - Para esto necesitas extraer el año de la fecha proporcionada.



### 4. Salida Esperada 

El script debe generar un archivo llamado `usuarios_importar.csv` que contenga objetos con las siguientes columnas:

```
| NombreCompleto         | Usuario | Email        | Departamento | PasswordInicial |
| ---------------------- | ------- | ------------ | ------------ | --------------- |
| Ana Maria Garcia Lopez | agarcia | ana.maria... | VENTAS       | ChangeMe1995!   |
```

---

Creas un script con extensión `ps1` y le añades lo siguiente:

```powershell
$rutaFichero = "nuevos_empleados_raw.txt"
$lineas = Get-Content $rutaFichero
$usuarios = @()

function Convertir-TitleCase ($texto) {
    $palabras = $texto.ToLower().Split(" ")
    $resultado = @()
    foreach ($p in $palabras) {
        $resultado += $p.Substring(0,1).ToUpper() + $p.Substring(1)
    }
    return $resultado -join " "
}

foreach ($linea in $lineas) {
    $partes = $linea.Split('|')

    $nombreRaw = $partes[0]
    $departamentoRaw = $partes[1]
    $fechaRaw = $partes[2]

    $nombrePartes = $nombreRaw.Split(',')
    $apellidos = $nombrePartes[0].Trim()
    $nombre = $nombrePartes[1].Trim()

    $nombreLimpio = Convertir-TitleCase $nombre
    $apellidosLimpios = Convertir-TitleCase $apellidos
    $nombreCompleto = "$nombreLimpio $apellidosLimpios"

    $primerApellido = $apellidos.Split(" ")[0]
    $usuario = ($nombre.Substring(0,1) + $primerApellido.Substring(0, [Math]::Min(6, $primerApellido.Length))).ToLower()

    $emailNombre = $nombreLimpio.Replace(" ", ".").ToLower()
    $emailApellido = $apellidosLimpios.Replace(" ", ".").ToLower()
    $email = "$emailNombre.$emailApellido@techiberia.com"

    $departamento = $departamentoRaw.Split('-')[1]

    $anio = $fechaRaw.Split('/')[0]
    $password = "ChangeMe$anio!"

    $usuarios += [PSCustomObject]@{
        NombreCompleto  = $nombreCompleto
        Usuario         = $usuario
        Email           = $email
        Departamento    = $departamento
        PasswordInicial = $password
    }
}

$usuarios | Export-Csv "usuarios_importar.csv" -NoTypeInformation -Encoding UTF8
$usuarios | Format-Table -AutoSize
```

Lo ejecutas y tienes que ver algo asi:

```powershell
PS C:\Users\HP\Desktop\ASO_DSA> . 'C:\Users\HP\Desktop\ASO_DSA\UT06\Practicas\PR0607_Limpieza_de_Datos_de_Usuario\mi_script.ps1'

NombreCompleto         Usuario Email                                 Departamento PasswordInicial
--------------         ------- -----                                 ------------ ---------------
Ana Maria Garcia Lopez agarcia ana.maria.garcia.lopez@techiberia.com VENTAS       ChangeMe1995!
Pedro Ruiz De La Torre pruiz   pedro.ruiz.de.la.torre@techiberia.com IT_SOPORTE   ChangeMe1988!
Sarah Jane O'connor    so'conn sarah.jane.o'connor@techiberia.com    MARKETING    ChangeMe2001!
Jose Martinez          jmartin jose.martinez@techiberia.com          LOGISTICA    ChangeMe1999!
```

Además del archivo `csv`.

---

[VOLVER A INICIO](../../../index.md)