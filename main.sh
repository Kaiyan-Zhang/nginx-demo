brew install nginx

nginx -t

brew services list

brew services start nginx

open http://localhost:8080

echo "<script> window.alert('hello') </script>" > index.html

sed -i '' "s|root   html;|root   $(pwd);|" /opt/homebrew/etc/nginx/nginx.conf

# 其实就是找到这个地方: 
# location / {
#      root   html;
#      index  index.html index.htm;
# }

# 把root html换成
# root 自定义的html的绝对路径

brew services reload nginx

open http://localhost:8080

brew services stop nginx

rm ./index.html

brew uninstall nginx

rm -rf /opt/homebrew/etc/nginx
