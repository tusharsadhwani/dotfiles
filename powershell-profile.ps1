Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox
Set-PSReadlineKeyHandler -Key Tab -Function Complete

# chocolatey autocomplete
Import-Module "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1" -Force

# aliases
New-Alias c cls
New-Alias python py
