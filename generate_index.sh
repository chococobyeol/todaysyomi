#!/usr/bin/env bash
cat > index.html <<EOF
<!DOCTYPE html>
<html lang="ko">
<head><meta charset="UTF-8"><title>Image List</title></head>
<body>
  <h1>Image Gallery</h1>
  <ul>
EOF

for img in images/*; do
  filename=$(basename "$img")
  echo "  <li>$filename</li>" >> index.html
done

cat >> index.html <<EOF
  </ul>
</body>
</html>
EOF 