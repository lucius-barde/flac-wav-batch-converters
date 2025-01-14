# Get list of wav files in the current directory
$wavFiles = Get-ChildItem -Filter *.wav

# Loop through each wav file
foreach ($file in $wavFiles) {
    # Define output file name
    $outputFile = "{0}.flac" -f ($file.BaseName)

    # Execute FFmpeg command to convert wav to flac with desired specifications
    ffmpeg -i $file.FullName -acodec flac -compression_level 5 $outputFile
}