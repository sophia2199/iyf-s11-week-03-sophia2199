#!/usr/bin/env bash
# scripts/new-project.sh
# Creates a new project with standard structure

PROJECT_NAME="$1"

if [ -z "$PROJECT_NAME" ]; then
  echo "Usage: ./new-project.sh project-name"
  exit 1
fi

mkdir -p "$PROJECT_NAME"/{src/{css,js,images},docs,tests}
# create files
: > "$PROJECT_NAME"/README.md
: > "$PROJECT_NAME"/src/index.html
: > "$PROJECT_NAME"/src/css/styles.css
: > "$PROJECT_NAME"/src/js/main.js

# Add a simple HTML boilerplate to index.html
cat > "$PROJECT_NAME"/src/index.html <<'HTML'
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>$PROJECT_NAME</title>
  <link rel="stylesheet" href="css/styles.css">
</head>
<body>
  <h1>$PROJECT_NAME</h1>
  <p>Project created by new-project.sh</p>
  <script src="js/main.js"></script>
</body>
</html>
HTML

# Add minimal CSS
cat > "$PROJECT_NAME"/src/css/styles.css <<'CSS'
/* Basic styles created by new-project.sh */
body { font-family: system-ui, -apple-system, 'Segoe UI', Roboto, Arial; padding: 1rem; }
h1 { color: #2563eb; }
CSS

# Add minimal JS
cat > "$PROJECT_NAME"/src/js/main.js <<'JS'
// Starter JS
console.log('Project $PROJECT_NAME created');
JS

echo "Project $PROJECT_NAME created successfully!"
