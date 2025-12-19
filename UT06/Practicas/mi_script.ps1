$arrayServicios = "Spooler", "W3SVC", "LanmanWorkstation"
$servicios = [System.Collections.Generic.List[string]]::new()
foreach ($srv in $arrayServicios) {
    $servicios.Add($srv)
}
$servicios.Add("wuauserv")
$servicios = $servicios | Sort-Object
foreach ($s in $servicios) {
    Write-Host "Monitorizando servicio: $s… OK"
}