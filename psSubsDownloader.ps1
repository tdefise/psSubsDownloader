param (
    [string]$directory
 )

$episodes = Get-ChildItem $directory -Filter *.mkv | % { $_.Name }

foreach ($row in $episodes)
{
   subliminal.exe download -l fr -l en $row $directory
}