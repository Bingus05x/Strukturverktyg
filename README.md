# Beskrivning

Detta PowerShell-skript automatiserar skapandet av en mappstruktur för ett projekt eller kundsystem. 
När skriptet körs:

 - Frågar det användaren efter ett namn på kundsystem.

 - Skapar en huvudmapp med det namnet.

 - Skapar tre undermappar i huvudmappen:

        logs

        scripts

        temp

- Skapar en loggfil i mappen logs med namnformatet log-YYYY-MM-DD.txt.

- Loggfilen innehåller en rad med information om när strukturen skapades.

- Skriptet innehåller felhantering med try/catch för att hantera om mappen med samma namn redan finns.

- Koden är kommenterad för att underlätta förståelse.

Hur man kör skriptet:

- Öppna PowerShell.

- Navigera till katalogen där strukturverktyg.ps1 finns.

- Kör skriptet med följande kommando:


       .\strukturverktyg.ps1

- Följ instruktionen och skriv in det namn som du vill ha på kunsdsystemet.

Reflektion

Det mest intressanta med uppgiften var att kombinera flera grundläggande PowerShell-tekniker i funktionen som sedan ska anropas: hämta tid och datum från systemet, skapa mappar och filer, samt implementera felhantering. 
Det var också lärorikt att använda datumformat och filskrivning på rätt sätt. En utmaning var att se till att felhanteringen fungerade korrekt och skapa rätt variabler som sedan skulle användas korrekt i funktionen. Funktionen gjorde koden lättare att läsa och återanvända.
