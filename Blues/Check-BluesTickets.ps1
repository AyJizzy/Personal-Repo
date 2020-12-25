function Find-BluesTickets 
{
    $VerbosePreference = "Continue"
    $headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
    $headers.Add("Authorization", "Basic TWpFME5UazFNRE44TVRZd09EWXlNREUwTkM0MU16Z3lNekV4Og==")
    $headers.Add("Cookie", "_pxhd=5fa10ae1ab09372f6b62002f7046fe851e80e9044b4baaae8e5d30d8f4e9b5ec:4d292ba1-4423-11eb-b904-abf12eb6e3a7")
    $response = Invoke-RestMethod 'https://api.seatgeek.com/2/events?q=st.louis+blues' -Method 'GET' -Headers $headers -Body $body
    Write-Output $response

}


function Find-CardinalsTickets
{
    $VerbosePreference = "continue"
    $headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
    $headers.Add("Authorization", "Basic TWpFME5UazFNRE44TVRZd09EWXlNREUwTkM0MU16Z3lNekV4Og==")
    $headers.Add("Cookie", "_pxhd=5fa10ae1ab09372f6b62002f7046fe851e80e9044b4baaae8e5d30d8f4e9b5ec:4d292ba1-4423-11eb-b904-abf12eb6e3a7")
    $response = Invoke-RestMethod 'https://api.seatgeek.com/2/events?q=st.louis+cardinals' -Method 'GET' -Headers $headers -Body $body    
    Write-Output $response
}