Get-ChildItem *.mp3 | ForEach-Object {
    $clean = $_.BaseName -replace "_"," "
    C:\ffmpeg\bin\ffmpeg.exe -i "$($_.Name)" -vf "drawtext=text='$clean':fontcolor=white:fontsize=48:x=(w-text_w)/2:y=50:box=1:boxcolor=black@0.5" -c:a copy -c:v qtrle "$($_.BaseName).mov"
}
