# Lista de parches CRÍTICOS requeridos por el boletín de seguridad
$kbsRequeridos = @("KB500123", "KB409999", "KB890830", "KB500556", "KB500321", "KB999999")

# Lista de parches INSTALADOS actualmente en el servidor 
# Nota: Están desordenados y podría haber parches viejos que no son críticos.
$kbsInstalados = @("KB100000", "KB500556", "KB409999", "KB100001", "KB890830", "KB200022")

$kbsFaltantes = @()
$kbsExtra = @()

foreach ($kb in $kbsRequeridos) {
    if ($kb -notin $kbsInstalados) {
        $kbsFaltantes += $kb
    }
}

foreach ($kb in $kbsInstalados) {
    if ($kb -notin $kbsRequeridos) {
        $kbsExtra += $kb
    }
}

$totalRequeridos = $kbsRequeridos.Count
$totalInstalados = $kbsInstalados.Count
$instaladosCorrectos = $totalRequeridos - $kbsFaltantes.Count
$porcentaje = [Math]::Round(($instaladosCorrectos / $totalRequeridos) * 100)

Write-Host "=== AUDITORÍA DE SEGURIDAD ==="
Write-Host "Total Requeridos: $totalRequeridos"
Write-Host "Total Instalados: $totalInstalados"
Write-Host ""
Write-Host "ESTADO DE CUMPLIMIENTO: $porcentaje%"
Write-Host ""
Write-Host "[URGENTE] Parches Faltantes:"
Write-Host ($kbsFaltantes -join ", ")
Write-Host ""
Write-Host "[INFO] Parches 'Extra' instalados (No críticos):"
Write-Host ($kbsExtra -join " - ")