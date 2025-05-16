# Nazar Falah 
# YH24

$namn = Read-Host "Ange namn för system/miljö"
Strukturverktyg -namn $namn

function strukturverktyg {
    param ($namn)
    
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
        
        
    }
    catch {
        Write-Host "Fel: $_"
    }


















}
