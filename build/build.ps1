$sourceCodeDir = (Get-ChildItem Env:BUILD_SOURCESDIRECTORY).Value
$wwwRootDir = Join-Path -Path $sourceDir -ChildPath "www"
$outputFile = Join-Path -Path $sourceDir -ChildPath "build\www.zip"

Add-Type -A System.IO.Compression.FileSystem
[IO.Compression.ZipFile]::CreateFromDirectory($wwwRootDir, $outputFile)
