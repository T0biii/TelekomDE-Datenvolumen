# TelekomDE Data volume
Powershell script to query Telekom DE data volume

# Screenshots
<img width="310" height="159" alt="image" src="https://github.com/user-attachments/assets/856a471c-698b-4ff8-81ff-73d6849b80b9" />
<img width="320" height="140" alt="image" src="https://github.com/user-attachments/assets/174b1723-2f84-4bad-9865-c25eab1c72be" />

## Telekom Data Usage – PowerShell Script

This script uses the **Telekom API**  
`https://pass.telekom.de/api/service/generic/v1/status`  
to retrieve the current status of your mobile data pass.

### How It Works
- Uses `Invoke-RestMethod` to request usage data (JSON) from the API.
- Displays **Pass name**, **initial volume**, **used data**, **usage percentage**, **remaining volume in GB**, and **remaining time**.
- Shows a warning if there is no mobile data connection.

## Telekom Datenverbrauch – PowerShell Skript

Dieses Skript nutzt die **Telekom API**  
`https://pass.telekom.de/api/service/generic/v1/status`  
um den aktuellen Verbrauchsstatus des mobilen Datenpasses auszulesen.

### Funktionsweise
- Ruft per `Invoke-RestMethod` die Verbrauchsdaten (JSON) von der API ab.
- Zeigt **Passname**, **Startvolumen**, **verbrauchtes Volumen**, **Prozentanteil**, **Restvolumen in GB** und **Restzeit** an.
- Gibt eine Warnung aus, wenn keine mobile Datenverbindung besteht.

# API Respons

Datenbonus
```json
{
  "sessionState": 0,
  "nextUpdate": 10800,
  "subscriptions": [
    "speedon",
    "roamLikeHome",
    "tns",
    "tnsBasicRoaming"
  ],
  "title": "",
  "passName": "Datenbonus",
  "passStage": 1,
  "validityPeriod": 2,
  "initialVolume": 4294967296,
  "initialVolumeStr": "4 GB",
  "usedVolume": 4279463299,
  "usedPercentage": 100,
  "usedVolumeStr": "3,98 GB",
  "usedAt": 1759877673000,
  "remainingSeconds": 2073906,
  "remainingTimeStr": "24 Tage 00 Std.",
  "passType": 101
}
```
Ihr Telekom Datentarif:
```json
{
  "sessionState": 0,
  "nextUpdate": 10800,
  "subscriptions": [
    "speedon",
    "roamLikeHome",
    "tns",
    "tnsBasicRoaming"
  ],
  "title": "",
  "passName": "Ihr Telekom Datentarif",
  "passStage": 1,
  "validityPeriod": 2,
  "initialVolume": 64424509440,
  "initialVolumeStr": "60 GB",
  "usedVolume": 1561061456,
  "usedPercentage": 3,
  "usedVolumeStr": "1,45 GB",
  "usedAt": 1759877719000,
  "remainingSeconds": 2073351,
  "remainingTimeStr": "23 Tage 23 Std.",
  "passType": 103
}
```

# Credits
I’d like to give credit to a random blog post I found, which made this project possible, as well as to a comment from Daniel for the API URL
https://wp.jochen.hayek.name/blog-de/2016/04/08/wenn-einem-programmierer-beim-abruf-von-pass-telekom-de-langweilig-wird/
