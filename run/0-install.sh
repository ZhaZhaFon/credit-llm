
# LibreOffice安装参考 https://zh-cn.libreoffice.org/get-help/install-howto/linux/
echo "### 安装LibreOffice"
wget https://download.documentfoundation.org/libreoffice/stable/7.4.7/deb/x86_64/LibreOffice_7.4.7_Linux_x86-64_deb.tar.gz # 安装包
tar -zxvf LibreOffice_7.4.7_Linux_x86-64_deb.tar.gz
sudo dpkg -i ./LibreOffice_7.4.7.2_Linux_x86-64_deb/DEBS/*.deb
wget https://download.documentfoundation.org/libreoffice/stable/7.4.7/deb/x86_64/LibreOffice_7.4.7_Linux_x86-64_deb_langpack_zh-CN.tar.gz # 语言包
tar -zxvf LibreOffice_7.4.7_Linux_x86-64_deb_langpack_zh-CN.tar.gz
sudo dpkg -i ./LibreOffice_7.4.7.2_Linux_x86-64_deb_langpack_zh-CN/DEBS/*.deb
export LD_LIBRARY_PATH=/usr/lib/libreoffice/program/:$LD_LIBRARY_PATH # 解决libreglo.so问题
echo "###\n"