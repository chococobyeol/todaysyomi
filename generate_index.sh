#!/usr/bin/env bash

# index.html 헤더 및 <ul> 시작
cat > index.html <<EOF
<!DOCTYPE html>
<html lang="ko">
<head><meta charset="UTF-8"><title>Image List</title></head>
<body>
  <h1>Image Gallery</h1>
  <ul>
EOF

# images/ 폴더의 파일명을 <li>로 추가
for img in images/*; do
  filename=$(basename "$img")
  echo "    <li>$filename</li>" >> index.html
done

# </ul> 및 </body> 닫기
cat >> index.html <<EOF
  </ul>
</body>
</html>
EOF