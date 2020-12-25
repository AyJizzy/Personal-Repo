function Send-DiscordAlert ($Uri) 
{
    $VerbosePreference = "continue"
    $Uri = "https://discord.com/api/webhooks/790821392667901992/Xmm7vNm5f4F1voSEvh0dBOxllpHjMdaMJXbxCfYQSSMQoFcHfAOHTAaDiD8VADmZE6WS"
    Write-Warning -Message "Looking for Discord module"
    $InstalledModules = Get-InstalledModule -Name PSdiscord
    
    If ($InstalledModules)
    {
        Send-DiscordMessage -uri $uri -message "Blues tickets are available!!!!"
    }
    else 
    {
        install-module -Name PSDiscord -AcceptLicense -Force
        Update-Module PSDiscord
        Import-Module -Name PSDiscord
        Send-DiscordMessage -uri $uri -message "Blues Tickets are available!!!!"    
    }
}

