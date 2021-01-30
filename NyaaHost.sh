echo "群晖 Emby 套件版一键破解脚本"
echo "来自：https://neko.re"
#信任证书
echo "添加信任证书..."
curl "https://neko.re/wp-content/uploads/simple-file-list/EmbyCA.pem" >> /etc/ssl/certs/ca-certificates.crt
echo "添加 hosts..."
#删除原有 hosts
sed -i 's/.*mb3admin\.com//' /etc/hosts
#添加 hosts
echo -e "119.28.51.30 mb3admin.com\n119.28.51.30 www.mb3admin.com" >> /etc/hosts
echo "安装完成，下一步请查看客户端破解方法"