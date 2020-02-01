$url = "https://pass.telekom.de/api/service/generic/v1/status"
try {
    $telekomstuff = Invoke-RestMethod -Uri $url -Method Get
} catch {
    $telekomstuff = "<html>" 
}

if(!($telekomstuff -Match "<html>")){
    $usedPercentage = $telekomstuff.usedPercentage
    $usedVolumeStr = $telekomstuff.usedVolumeStr
    $remaniningTimeStr = $telekomstuff.remainingTimeStr
    $initialVolumeStr = $telekomstuff.initialVolumeStr
    $Volumenleft = $telekomstuff.initialVolume - $telekomstuff.usedVolume
    $VolumenleftGB = $Volumenleft / 1GB
    Write-Host "Initial Volume: $initialVolumeStr" -ForegroundColor Green
    Write-host "Used: $usedVolumeStr" -ForegroundColor Green
    Write-Host "Used in Percentage: $usedPercentage%" -ForegroundColor Green
    Write-Host "Volumen left: $([math]::Round($VolumenleftGB,2)) GB" -ForegroundColor Green
    Write-Host "Reamining Time: $remaniningTimeStr" -ForegroundColor Green
}else{
    Write-host "Nicht mit Mobilen Datenverbunden!" -ForegroundColor Red
}
