```
---------------- ADMINISTRACIÓN DE SISTEMAS INFORMÁTICOS Y REDES ----------------
---------------------------------------------------------------------------------

Módulo:                     ADMINISTRACIÓN DE SISTEMAS OPERATIVOS
Profesor:                   Víctor J. González
Unidad de Trabajo:          UT06
Práctica:                   PR0605. Limpieza de logs
Resultados de aprendizaje:  RA7
```



### 1.- Objetivo

Eres el administrador de sistemas de una empresa de seguridad. Un servidor legacy (antiguo) está generando unos logs de aplicación con un formato terrible y poco estándar. El departamento de seguridad necesita un informe limpio en CSV para poder auditar quién ha accedido al sistema.

No puedes cambiar cómo el servidor genera los logs. Tu única opción es crear un script en PowerShell que "digiera" ese texto crudo y lo transforme en información estructurada.

### 2.- Datos de entrada

Debes copiar y pegar este bloque de texto en su script dentro de una variable (Heredoc) o leerlo desde un archivo `.txt`.

```powershell
$logCrudo = @"
[INFO] ID:8842 :: 2023/11/01_10:00 :: User:admin_01 :: Action:Login_Success
[ERROR] ID:9921 :: 2023/11/01_10:05 :: User:guest_user :: Action:Auth_Fail (Pass)
[WARN] ID:8843 :: 2023-11-01 10:15 :: User:dev_team :: Action:Upload_Limit_Exceeded
[CRITICAL] ID:1001 :: 01-11-2023_10:20 :: User:ROOT :: Action:Service_Stop
"@
```

Observa bien los datos. Hay inconsistencias deliberadas:

- Las fechas tienen formatos distintos (`/`, `-`, `_`).
- Los delimitadores principales son `::`, pero hay espacios variables.
- Los usuarios a veces están en mayúsculas y otras en minúsculas.

### 3.- Los requisitos

Tu script debe procesar `$logCrudo` y cumplir **estrictamente** con los siguientes puntos. 

1.  **Normalización de fechas:** todas las fechas deben salir en formato estándar ISO `yyyy-MM-dd HH:mm`.
2.  **Limpieza de usuarios:**
      - Deben estar todos en **minúsculas**.
      - Si el usuario es "ROOT", debe ser renombrado automáticamente a "administrator" por política de seguridad.
3.  **Clasificación de gravedad:**
      - Debes extraer el nivel de log (INFO, ERROR, etc.) sin los corchetes `[]`.
4.  **Filtrado:**
      - Solo nos interesan las líneas que **NO** sean `[INFO]`. Ignora los logs informativos.
5.  **Salida estructurada:**
      - El script no debe escribir texto plano en la consola. Debe generar **Objetos PowerShell** (PSCustomObject) y finalmente exportarlos a un archivo `reporte_seguridad.csv`. Para crear esta tabla usa `[PSCustomObject]@{}`.

### 4.- Resultado esperado

Al abrir el CSV generado, debería verse algo así (el orden de columnas puede variar):

| TimeStamp        | Severity | User           | EventID | Action                  |
| :--------------- | :------- | :------------- | :------ | :---------------------- |
| 2023-11-01 10:05 | ERROR    | guest\_user    | 9921    | Auth\_Fail (Pass)       | 
| 2023-11-01 10:15 | WARN     | dev\_team      | 8843    | Upload\_Limit\_Exceeded |
| 2023-11-01 10:20 | CRITICAL | administrator  | 1001    | Service\_Stop           |

---

Creas un script con extensión `ps1` y le añades lo siguiente:

```powershell
$logCrudo = @"
[INFO] ID:8842 :: 2023/11/01_10:00 :: User:admin_01 :: Action:Login_Success
[ERROR] ID:9921 :: 2023/11/01_10:05 :: User:guest_user :: Action:Auth_Fail (Pass)
[WARN] ID:8843 :: 2023-11-01 10:15 :: User:dev_team :: Action:Upload_Limit_Exceeded
[CRITICAL] ID:1001 :: 01-11-2023_10:20 :: User:ROOT :: Action:Service_Stop
"@ -split "`r`n"

$objetosProcesados = foreach($linea in $logCrudo) {
    if ($linea.StartsWith("[INFO]")) { continue } 

    $partes = $linea -split " :: "
    # partes[0] = "[ERROR] ID:9921"
    # [ERROR ID:9921
    $nivelRaw = $partes[0].Split(']')[0].Replace('[','').Trim()
    $id = $partes[0].Split(':')[1].Trim()

    $fechaLimpia = $partes[1].Replace('_', ' ').Replace('-', '/').Trim()
    $timeStamp = (Get-Date $fechaLimpia).ToString("yyyy-MM-dd HH:mm")
    $usuarioRaw = $partes[2].Split(':')[1].Trim().ToLower()
    if ($usuarioRaw -eq "root") { $usuarioRaw = "administrator" }
    
    # $accion = $partes[3].Substring($partes[3].IndexOf(':') + 1).Trim()
    $accion = $partes[3].Split(':')[1]

    [PSCustomObject]@{
        Fecha = $timeStamp
        Severity = $nivelRaw
        User = $usuarioRaw
        EventID = $id
        Action = $accion
    }
}
$objetosProcesados | Export-Csv -Path "reporte_seguridad.csv"
$objetosProcesados | Format-Table -AutoSize
```

Lo ejecutas y tienes que ver algo asi:

```powershell
PS C:\Users\HP\Desktop\ASO_DSA> . 'C:\Users\HP\Desktop\ASO_DSA\UT06\Practicas\mi_script.ps1'

Fecha            Severity User          EventID Action
-----            -------- ----          ------- ------
2023/11/01 10:05 ERROR    guest_user    9921    Auth_Fail (Pass)     
2023/11/01 10:15 WARN     dev_team      8843    Upload_Limit_Exceeded
01/11/2023 10:20 CRITICAL administrator 1001    Service_Stop
```

Además del archivo `csv`.

---

[VOLVER A INICIO](../../../index.md)