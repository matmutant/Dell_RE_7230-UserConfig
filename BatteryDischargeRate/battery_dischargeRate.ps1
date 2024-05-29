$filePath = ".\batteryDischarge"
$fileDate = get-date -uFormat "%Y%m%d"
$fileExt = ".csv"

$header = "Date;DishargeRateBat0;RemainingCapacityBat0;DishargeRateBat1;RemainingCapacityBat1;"
$header | Out-File -FilePath $filePath$fileDate$fileExt -Encoding utf8

#LOOP

while($True) {
$fullStat = Get-CimInstance -Namespace ROOT\WMI -ClassName "BatteryStatus"

Write-Host '		bat0	;	bat1'
Write-Host 'Discharge Rate:	'$fullStat.DischargeRate[0]'	;	'$fullStat.DischargeRate[1]' (mW)'
Write-Host 'Remaining capa:	'$fullStat.RemainingCapacity[0]'	;	'$fullStat.RemainingCapacity[1]' (mWh)'

$dateTime = get-date
$dR0 = $fullStat.DischargeRate[0]
$dR1 = $fullStat.DischargeRate[1]
$rC0 = $fullStat.RemainingCapacity[0]
$rC1 = $fullStat.RemainingCapacity[1]



$line = "$dateTime;$dR0;$rC0;$dR1;$rC1;"
$line | Out-File -FilePath $filePath$fileDate$fileExt -Encoding utf8 -Append

Start-Sleep -Seconds 1

}


