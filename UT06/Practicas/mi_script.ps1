$incidencias = New-Object System.Collections.ArrayList
$null = $incidencias.Add("Monitor parpadea")
$null = $incidencias.Add("Ratón no va")
$incidencias.Insert(0, "SERVIDOR CAIDO")
$incidencias.Remove("Ratón no va")
$incidencias
$incidencias.Count
