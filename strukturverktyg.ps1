# Nazar Falah 
# YH24



function strukturverktyg {
    param ([string]$namn)
    
    $datum = Get-Date -Format "yyyy-MM-dd"
    $tid = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $huvudmapp = ".\$namn"

    try {
        if (Test-Path $huvudmapp) {
            throw "Mappen '$namn' finns redan."
        }

        New-Item -Path $huvudmapp -ItemType Directory

        # Skapa undermappar
        $undermappar = @("logs", "scripts", "temp")
        foreach ($mapp in $undermappar) {
            New-Item -Path "$huvudmapp\$mapp" -ItemType Directory 
        }

        # Skapa loggfil i logs/
        $loggFil = "$huvudmapp\logs\log-$datum.txt"
        "Struktur skapad: $tid" | Out-File -FilePath $loggFil -Encoding UTF8

        Write-Host "Struktur för '$namn' skapad utan problem."
        
    }
    catch {
        Write-Host "Fel: $_"
    }
    
    
}

$namn = Read-Host "Ange namn för kundsystem"
Strukturverktyg -namn $namn