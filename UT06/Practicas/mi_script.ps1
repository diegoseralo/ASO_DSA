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
Write-Host "DIAGNÒSTICO:"
Write-Host $diagnostico