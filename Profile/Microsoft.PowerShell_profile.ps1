Set-Location "~\Documents\git\Personal-Repo"
#Import-Module "C:\Powershell\Weather\Get-YahooWeather.ps1" 
Clear-Host

function prompt {
    # https://github.com/dahlbyk/posh-git/wiki/Customizing-Your-PowerShell-Prompt
    $origLastExitCode = $LastExitCode
    Write-VcsStatus

    if (Test-Administrator) {  # if elevated
        Write-Host "(Admin) " -NoNewline -ForegroundColor White
    }

    Write-Host "$env:USERNAME@" -NoNewline -ForegroundColor DarkYellow
    Write-Host "$env:COMPUTERNAME" -NoNewline -ForegroundColor Magenta
    Write-Host " : " -NoNewline -ForegroundColor DarkGray

    $curPath = $ExecutionContext.SessionState.Path.CurrentLocation.Path
    if ($curPath.ToLower().StartsWith($Home.ToLower()))
    {
        $curPath = "~" + $curPath.SubString($Home.Length)
    }

    Write-Host $curPath -NoNewline -ForegroundColor Blue
    Write-Host " : " -NoNewline -ForegroundColor DarkGray
    Write-Host (Get-Date -Format G) -NoNewline -ForegroundColor DarkMagenta
    Write-Host " : " -NoNewline -ForegroundColor DarkGray
    $LastExitCode = $origLastExitCode
    "`n$('>' * ($nestedPromptLevel + 1)) "
}

Import-Module posh-git

$global:GitPromptSettings.BeforeText = '['
$global:GitPromptSettings.AfterText  = '] '
# Chocolatey profile

write-host "
_    _  __  _  _ _____  ___ ___
| /\ | |__| |\ |   |   |___ |  \
|/  \| |  | | \|   |   |___ |__/

F O R   C R I M E S   A G A I N S T   T H E   E M P I R E

________________________  _________________________  _______________________
|        .......       LS||      .x%%%%%%x.         ||  ,.------;:~~:-.      |
|      ::::::;;::.       ||     ,%%%%%%%%%%%        || /:.\`;;|||;:/;;:\     |
|    .::;::::;::::.      ||    ,%%%'  )'  \%        ||:')\`:\||::/.-_':/)    |
|   .::::::::::::::      ||   ,%x%) __   _ Y        ||`:`\\\ ;'||'.''/,.:\   |
|   ::`_```_```;:::.     ||   :%%% ~=-. <=~|        ||==`;.:`|;::/'/./';;=   |
|   ::=-) :=-`  ::::     ||   :%%::. .:,\  |        ||:-/-%%% | |%%%;;_- _:  |
| `::|  / :     `:::     ||   `;%:`\. `-' .'        ||=// %wm)..(mw%`_ :`:\  |
|   '|  `~'     ;:::     ||    ``x`. -===-;         ||;;--', /88\ -,- :-~~|  |
|    :-:==-.   / :'      ||     / `:`.__.;          ||-;~~::'`~^~:`::`/`-=:) |
|    `. _    .'.d8:      ||  .d8b.  :: ..`.         ||(;':)%%%' `%%%.`:``:)\ |
| _.  |88bood88888._     || d88888b.  '  /8         ||(\ %%%/dV##Vb`%%%%:`-. |
|~  `-+8888888888P  `-. _||d888888888b. ( 8b       /|| |);/( ;~~~~ :)\`;;.``\|
|-'     ~~^^^^~~  `./8 ~ ||~   ~`888888b  `8b     /:|| //\'/,/|;;|:(: |.|\;|\|
|8b /  /  |   \  \  `8   ||  ' ' `888888   `8. _ /:/||/) |(/ | / \|\\`( )- ` |
|P        `          8   ||'      )88888b   8b |):X ||;):):)/.):|/) (`:`\\`-`|
|                    8b  ||   ~ - |888888   `8b/:/:\||;%/ //;/(\`.':| ::`\\;`|
|                    `8  ||       |888888    88\/~~;||;/~( \|./;)|.|):;\. \\-|
|                     8b ||       (888888b   88|  / ||/',:\//) ||`.|| (:\)):%|
|         .           `8 ||\       \888888   8-:   /||,|/;/(%;.||| (|(\:- ; :|
|________/_\___________8_||_\_______\88888_.'___\__/||_%__%:__;_:`_;_:_.\%_`_|

L u k e  S k y w a l k e r      H a n   S o l o          C h e w b a c c a

Self-Proclaimed Jedi Knight     Smuggler, Pirate         Smuggler, Pirate
500,000 credits            200,000 credits          100,000 credits

The above are wanted for the following crimes:

- Liberation of a known criminal, Princess Leia Organa of Alderaan -
- Direct involvement in armed revolt against the Empire -
        - High treason -
         - Espionage -
         - Conspiracy -
- Destruction of Imperial Property -

These individuals are considered extremely dangerous.

E X P E R I E N C E D   B O U N T Y   H U N T E R S   O N L Y

The Empire will not  be held  responsible  for any  injuries or property
loss arising from the  attempted apprehension of these  notorious crimi-
nals. Bounty is for live capture only! For more information contact your
local Imperial Intelligence Office.s
"