$sourceDir = (Get-ChildItem Env:AGENT_BUILDDIRECTORY).Value
$copyDir = Join-Path -Path $sourceDir -ChildPath "copy"
$outputFile = Join-Path -Path $sourceDir -ChildPath "build\drop.zip"

Add-Type -A System.IO.Compression.FileSystem
[IO.Compression.ZipFile]::CreateFromDirectory($copyDir, $outputFile)