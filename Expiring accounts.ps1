#Displays a list of accounts that will expire in the next year and the expiry date.
Import-Module ActiveDirectory
Search-ADAccount -AccountExpiring -TimeSpan "365" | Select-Object Name,AccountExpirationDate | Sort-Object AccountExpirationDate
