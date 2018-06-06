$startnumber=
$endnumber=
$mailboxusername=""
$domain=""

$i=$startnumber
Do {
    Set-RemoteMailbox "$mailboxusername" -EmailAddresses @{add="$mailboxusername$i@$domain"}
    $i++
    }
Until ($i -eq $endnumber+1)