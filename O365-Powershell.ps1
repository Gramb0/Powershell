Set-ExecutionPolicy RemoteSigned
#This only needs to be run once on a computer, not each time you connect to O365.

#Connect to O365:
$UserCredential = Get-Credential
#Enter your admin credentials

$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $UserCredential -Authentication Basic -AllowRedirection
#Create the session variable

Import-PSSession $Session
#Connect to the session

#Disconnect from O365:
Remove-PSSession $Session
#Terminate the session. You must do this each time you want to disconnect or you may occupy all of the available connections and you will need to wait until they time out to connect again.
