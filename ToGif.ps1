# Convert .mp4 to .gif using ffmpeg
# -------------------------------------------
# Usage example
# >    ToGif "~\Downloads\cat-video.mp4"
#
# Outputs .gif to input file's location
# >    ~\Downloads\silly-cat-meme.gif
#
# Remove '-loglevel quiet' for logs

Param ($infile)

# Replace infile's extension with '.gif'
$basename = (Get-Item "$infile").BaseName
$dir = (Get-Item "$infile").DirectoryName
$outfile =  "$dir\$basename.gif"
$palette = "$dir\$basename-palette.png"
# Create pallete
ffmpeg -y -i $infile -vf fps=10,scale=320:-1:flags=lanczos,palettegen $palette -loglevel quiet

# Convert
ffmpeg -y -i $infile -i $palette -filter_complex "[0:v] fps=30,scale=320:-1 [new];[new][1:v] paletteuse" $outfile -loglevel quiet

# Cleanup
Remove-Item $palette

# Write out path of .gif
Write-Output $outfile