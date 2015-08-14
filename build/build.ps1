$sourceDir = (Get-ChildItem Env:AGENT_BUILDDIRECTORY).Value
$copyDir = Join-Path -Path (Get-ChildItem Env:AGENT_BUILDDIRECTORY).Value -ChildPath "artifacts\copy"
$outputFile = Join-Path -Path (Get-ChildItem Env:BUILD_SOURCESDIRECTORY).Value -ChildPath "build\drop.zip"

Add-Type -A System.IO.Compression.FileSystem
[IO.Compression.ZipFile]::CreateFromDirectory($copyDir, $outputFile)