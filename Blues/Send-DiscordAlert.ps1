function Send-DiscordAlert 
{
    Param(
        [Parameter(Mandatory=$false)]
        [Switch]$Blues
        )
    $VerbosePreference = "continue"
    if ($Blues -eq $true)
    {
        $Uri = "https://discord.com/api/webhooks/790821392667901992/Xmm7vNm5f4F1voSEvh0dBOxllpHjMdaMJXbxCfYQSSMQoFcHfAOHTAaDiD8VADmZE6WS"
        Write-Verbose -Message "Looking for Discord module"
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
    else 
    {
        $Uri = "https://discordapp.com/api/webhooks/793996559658385418/nlJxPsfFVd7QVPXBvbf8CAtm2NsOgTZiZDyIRQSR9CkGAegPcPqmIbJDIOI9frIJHLe_"
        Write-Verbose -Message "Looking for Discord module"
        $InstalledModules = Get-InstalledModule -Name PSdiscord
        If ($InstalledModules)
        {
            Send-DiscordMessage -uri $uri -message "Cards tickets are available!!!!"
        }
        else 
        {
            install-module -Name PSDiscord -AcceptLicense -Force
            Update-Module PSDiscord
            Import-Module -Name PSDiscord
            Send-DiscordMessage -uri $uri -message "Cards Tickets are available!!!!"    
        }
    }

}
