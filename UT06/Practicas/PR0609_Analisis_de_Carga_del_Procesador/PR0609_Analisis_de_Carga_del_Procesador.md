```
---------------- ADMINISTRACIÓN DE SISTEMAS INFORMÁTICOS Y REDES ----------------
---------------------------------------------------------------------------------

Módulo:                     ADMINISTRACIÓN DE SISTEMAS OPERATIVOS
Profesor:                   Víctor J. González
Unidad de Trabajo:          UT06
Práctica:                   PR0609. Análisis carga procesador
Resultados de aprendizaje:  RA7
```


### 1.- Objetivo

El servidor de base de datos (`SRV-SQL-PROD`) se ha reiniciado inesperadamente esta madrugada. Tu jefe sospecha que el servidor se está quedando pequeño y que la CPU llegó al 100% provocando el colapso.

El sistema de monitorización ha volcado un **array de enteros** con el porcentaje de uso de CPU tomado cada 5 minutos durante la última hora crítica.

Tu objetivo será escribir un script que analice esos datos crudos y genere un informe automático para decidir si es necesario comprar más procesadores o si solo fue un error puntual.

### 2. Datos de Entrada

Copia esta variable en tu script. Representa el % de CPU en intervalos de 5 minutos.

```powershell
$muestrasCPU = @(15, 12, 18, 20, 45, 88, 95, 99, 100, 98, 55, 22, 15, 10, 12, 14, 95, 99, 100, 10)

```

### 3. Requerimientos técnicos

Tu script debe recorrer el array `$muestrasCPU` y calcular manualmente lo siguiente:

1. **Carga promedio:**
   - Suma todos los valores y divídelos entre la cantidad total de muestras.

2. **Pico máximo:**
   - Debes averiguar cuál fue el valor más alto registrado.

3. **Contador de incidentes críticos:**
    - Cuenta cuántas veces la CPU superó el **90%**. Esto indicará la duración del incidente.

4. **Decisión final:**
    - Si el *promedio* es superior a 70% **O** hubo más de 3 incidentes críticos, el script debe imprimir: `[RECOMENDACIÓN] NECESARIO UPGRADE DE HARDWARE`.
   - En caso contrario: `[RECOMENDACIÓN] FALSA ALARMA. EL SERVIDOR AGUANTA`.


### 4. Salida Esperada

```text
=== INFORME DE RENDIMIENTO ===
Muestras analizadas: 20

RESULTADOS DEL ANÁLISIS:
- Carga Promedio: 46.1 %
- Pico Máximo: 100 %
- Incidentes Críticos (>90%): 6

DIAGNÓSTICO:
[RECOMENDACIÓN] NECESARIO UPGRADE DE HARDWARE

```

---

Creas un script con extensión `ps1` y le añades lo siguiente:

```powershell
$muestrasCPU = @(15, 12, 18, 20, 45, 88, 95, 99, 100, 98, 55, 22, 15, 10, 12, 14, 95, 99, 100, 10)
$suma = 0
$pico = 0
$incidentes = 0
foreach ($valor in $muestrasCPU) {
    $suma += $valor
    if ($valor -gt $pico) {
        $pico = $valor
    }
    if ($valor -ge 90) {
        $incidentes++
    }
}
$Muestras = $muestrasCPU.Count
$promedio = $suma / $Muestras
if ($promedio -gt 70 -or $incidentes -gt 3) {
    $diagnostico = "[RECOMENDACIÒN] NECESARIO UPGRADE DE HARDWARE."
} else {
    $diagnostico = "[RECOMENDACIÒN] FALSA ALARMA. EL SERVIDOR AGUANTA."
}
Write-Host "=== INFORME DE RENDIMIENTO ==="
Write-Host "Muestras analizadas: $Muestras"
Write-Host ""
Write-Host "RESULTADOS DEL ANÁLISIS:"
Write-Host "- Carga Promedio: $promedio %"
Write-Host "- Pico Máximo: $pico %"
Write-Host "- Incidentes Críticos (>90%): $incidentes"
Write-Host ""
Write-Host "DIAGNÒSTICO: "
Write-Host $diagnostico
```

Lo ejecutas y tienes que ver algo asi:

```powershell
PS C:\Users\HP\Desktop\ASO_DSA> . 'C:\Users\HP\Desktop\ASO_DSA\UT06\Practicas\mi_script.ps1'
=== INFORME DE RENDIMIENTO ===
Muestras analizadas: 20

RESULTADOS DEL ANÃLISIS:
- Carga Promedio: 51.1 %
- Pico MÃ¡ximo: 100 %
- Incidentes CrÃ­ticos (>90%): 7

DIAGNÃ’STICO:
[RECOMENDACIÃ’N] NECESARIO UPGRADE DE HARDWARE.
```

---

[VOLVER A INICIO](../../../index.md)