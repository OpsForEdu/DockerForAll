#!/bin/sh

COLOR="${COLOR:-blue}"

cat <<EOF > /usr/share/nginx/html/index.html
<html>
  <head><title>$COLOR Page</title></head>
  <body style="background-color: $COLOR; color: white; text-align: center; font-family: Arial, sans-serif;">
    <h1>This is the $COLOR page</h1>
  </body>
</html>
EOF

nginx -g "daemon off;"