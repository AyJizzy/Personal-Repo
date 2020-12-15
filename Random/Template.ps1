$headers=@{}
$headers.Add("x-rapidapi-host", "us-restaurant-menus.p.rapidapi.com")
$headers.Add("x-rapidapi-key", "a6300ececdmshac11395a84f2d7ap1a4185jsn8b8504cf8867")
$response = Invoke-RestMethod -Uri 'https://us-restaurant-menus.p.rapidapi.com/restaurants/zip_code/63103?page=1' -Method GET -Headers $headers
