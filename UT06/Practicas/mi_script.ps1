$movimientosCrudos = @"
[LOG-OK] SKU:A199 :: 2024.01.10_08:00 :: Item:Smartphone_X :: Qty:50 :: Status:In_Stock
[LOG-ALERT] SKU:B250 :: 10-01-2024 09:15 :: Item:LAPTOP-PRO :: Qty:-5 :: Status:Damaged
[LOG-OK] SKU:C312 :: 2024/01/10_10:30 :: Item:tablet_air :: Qty:120 :: Status:In_Stock
[LOG-CRIT] SKU:D400 :: 11/01/2024_11:45 :: Item:UNKNOWN_ITEM :: Qty:0 :: Status:Out_Of_Order
"@ -split "`r`n"

$objetosProcesados = foreach($linea in $movimientosCrudos) {
    if ($linea.StartsWith("[LOG-OK]")) { continue } 

    $partes = $linea -split " :: "

    $severity = $partes[0].Split(' ')[0].Replace("[", "").Replace("]", "").Trim()

    $item = $partes[2].Split(':')[1].Trim().Toupper()
    if ($item -eq "UNKNOWN_ITEM") { $item ="PENDING_REVIEW" }

    $fechaLimpia = $partes[1].Replace('_', ' ').Replace('-', '/').Replace('.','/').Trim()
    $timeStamp = (Get-Date $fechaLimpia).ToString("dd-MM-yyyy HH:mm")

    $status = $partes[4].Split(':')[1].Trim()
    if ($status -eq "Damaged") { $action = "Repair"}
    elseif ($status -eq "Out_Of_Order") { $action = "Replace" }
    else { $action = "None" }

    [PSCustomObject]@{
        Severidad = $severity
        Item = $item
        Fecha = $timeStamp
        ActionRequired = $action
    }
}
$objetosProcesados | Export-Csv -Path "./PR0606_Limpieza_de_Logs_2/reporte_inventario.csv"
$objetosProcesados | Format-Table -AutoSize