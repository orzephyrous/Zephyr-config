Write-Host "Move $($Args.Count) Item(s) to Recycle Bin? [Y/n]" -NoNewLine

While ($true) {
  $KeyPress = ([console]::ReadKey($true).Key)
  if ($KeyPress -in "N", "Escape") {
    break
  } elseif ($KeyPress -in "Y", "Enter") {
    Write-Host "`nMoving Item(s) to Recycle Bin..."
    foreach ($file in $Args) { Remove-ItemSafely $file -Force -Recurse }
    if (-not $?) { pause }
    break
  } else {
    continue
  }
}
