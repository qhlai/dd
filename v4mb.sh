wget https://ghproxy.com/https://raw.githubusercontent.com/qhlai/dd/main/v4mb.zip
unzip v4mb.zip
rm -f v4mb.zip
mv v4mb/panel panel
mv v4mb/config/diy.sh config/diy.sh
mv v4mb/config/auth.json config/auth.json
rm -rf v4mb
cd panel
npm i
pm2 start server.js
echo -e "端口5678，默认用户名admin，密码adminadmin"
