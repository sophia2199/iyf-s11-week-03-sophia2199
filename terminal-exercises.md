# Terminal Exercises & Answers (Task 5)

This document contains the terminal exercises and example answers. Replace the example outputs with your own when you complete the tasks.

Task 5.1: Terminal Navigation — Example commands

# Find current directory
pwd

# List contents
ls -la

# Navigate to Documents
cd ~/Documents

# Go back
cd ..

# Go to home
cd ~

Task 5.2: File operations — Example commands

# Create a file
touch index.html

# View a file
cat index.html

# Copy a file
cp index.html backup.html

# Move a file
mv backup.html docs/

# Rename
mv index.html home.html

# Delete
rm home.html

Task 5.3: Useful commands — examples

# Find files by name
find . -name "*.html"

# Search inside files
grep -r "contact" .

# Show history (bash)
history | tail -n 10

# View first/last lines
head -n 10 styles.css
tail -n 10 styles.css

# Count lines
wc -l styles.css

Questions to answer using the terminal (examples provided)

- How many HTML files are in your portfolio project?
  Example:
  $ find iyf-s11-week-01-sophia2199 -name "*.html" | wc -l
  -> 6

- Which files contain the word "contact"?
  Example:
  $ grep -ril "contact" .
  -> ./iyf-s11-week-01-sophia2199/contact.html
  -> ./iyf-s11-week-02-sophia2199/contact.html

- How many lines is your CSS file?
  Example:
  $ wc -l styles.css
  -> 140 styles.css

- What were your last 10 terminal commands?
  Example:
  $ history | tail -n 10

Task 5.4: Shell Script Basics — see scripts/ directory for working scripts.

Remember: replace example commands and outputs here with your real terminal text and paste into terminal-log.md before submission.
