param(
    [string]$ProjectName
)

# scripts/new-project.ps1
# PowerShell version of project scaffold
if (-not $ProjectName) {
    Write-Host "Usage: .\new-project.ps1 -ProjectName <name>"
    exit 1
}

$paths = @(
    "$ProjectName\src\css",
    "$ProjectName\src\js",
    "$ProjectName\src\images",
    "$ProjectName\docs",
    "$ProjectName\tests"
)

foreach ($p in $paths) {
    New-Item -ItemType Directory -Path $p -Force | Out-Null
}

$files = @(
    "$ProjectName\README.md",
    "$ProjectName\src\index.html",
    "$ProjectName\src\css\styles.css",
    "$ProjectName\src\js\main.js"
)

foreach ($f in $files) {
    New-Item -ItemType File -Path $f -Force | Out-Null
}

# Add content to index.html
@"
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>$ProjectName</title>
  <link rel="stylesheet" href="css/styles.css">
</head>
<body>
  <h1>$ProjectName</h1>
  <p>Project created by new-project.ps1</p>
  <script src="js/main.js"></script>
</body>
</html>
"@ | Set-Content -Path "$ProjectName\src\index.html"

# Add basic CSS
"body { font-family: system-ui, -apple-system, 'Segoe UI', Roboto, Arial; padding:1rem }`nh1 { color:#2563eb }" | Set-Content -Path "$ProjectName\src\css\styles.css"

# Add basic JS
"console.log('Project $ProjectName created');" | Set-Content -Path "$ProjectName\src\js\main.js"

Write-Host "Project $ProjectName created successfully!"
