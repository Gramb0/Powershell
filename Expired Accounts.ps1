#Displays a list of Expired accounts in AD and the date they expired.
Import-Module ActiveDirectory
Search-ADAccount -accountexpired -usersonly | Select-Object Name,AccountExpirationDate | Sort-Object AccountExpirationDate
