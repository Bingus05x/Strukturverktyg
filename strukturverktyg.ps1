# Nazar Falah 
# YH24


# Funktion som skapar mappstruktur
function strukturverktyg {
    param ([string]$namn)

    # Skriptet tog fram dagens datum och tid
    $datum = Get-Date -Format "yyyy-MM-dd"
    $tid = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

    # Sökväg till huvudmappen i den nuvarande katalogen
    $huvudmapp = ".\$namn"  

    try {
        # Skriptet kontrollerade om en mapp med samma namn redan existerade
        if (Test-Path $huvudmapp) {
            throw "Mappen '$namn' finns redan."
        }

        # Huvudmappen skapades
        New-Item -Path $huvudmapp -ItemType Directory

        # Variabel med en lista över underkataloger
        $undermappar = @("logs", "scripts", "temp")

        # Alla undermappar skapades inuti huvudmappen
        foreach ($mapp in $undermappar) {
            New-Item -Path "$huvudmapp\$mapp" -ItemType Directory 
        }

        # En loggfil genererades med datum i filnamnet i logs/
        $loggFil = "$huvudmapp\logs\log-$datum.txt"
        
        # Skriptet skrev in datum och tid i loggfilen
        "Struktur skapad: $tid" | Out-File -FilePath $loggFil -Encoding UTF8

        # Användaren informerades om att allt hade skapats korrekt
        Write-Host "Struktur för '$namn' skapad utan problem."
        
    }
    catch {
        Write-Host "Fel: $_"
    }
    
    
}

# Användaren måste ange ett namn för kundsystemet 
$namn = Read-Host "Ange namn för kundsystem"

# Funktionen anropades med det namn som användaren hade matat in
Strukturverktyg -namn $namn