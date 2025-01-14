# Get list of flac files in the current directory
$flacFiles = Get-ChildItem -Filter *.flac

# Loop through each flac file
foreach ($file in $flacFiles) {
    # Define output file name
    $outputFile = "{0}.wav" -f ($file.BaseName)

    # Execute FFmpeg command to convert flac to wav with desired specifications
    ffmpeg -i $file.FullName -acodec pcm_s24le -ar 192000 $outputFile
}