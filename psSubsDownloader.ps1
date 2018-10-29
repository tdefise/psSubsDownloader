$episodes = Get-ChildItem -Filter *.mkv | % { $_.Name }

foreach ($row in $episodes)
{
   subliminal.exe download -l fr $row
}