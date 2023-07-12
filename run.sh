SCRIPT=run_GLM6B.sh # 运行的脚本
FESS_PATH=/mnt/download/fess-14.7.0 # Fess安装包

echo ""

#echo "# 知识库预处理"
#bash run/4-kb_preprocess.sh
#echo "#"; echo "";

echo "# 配置知识库 - RTST模式 (测试)"
cd wenda
rm -rf memory/ # 删除memory: 清除已有的知识库索引 保留memory: 保留已有的知识库索引
python3 plugins/gen_data_st.py
cd ..
echo "#"; echo "";

echo "# 配置知识库 - Fess模式 (测试)"
$FESS_PATH/bin/fess -d
echo "### 打开页面并登陆 http://localhost:8080/admin/ (初始账号密码均为admin或1234567)"
echo "### 左侧边栏 Crawler - File System - Create New"
echo "### Paths配置为files://搜索范围的绝对地址 (e.g. files:///mnt/) - Name 命名 - Create new job"
echo "### System - Scheduler - 点击上面创建的crawler - Start now"
echo '#'; echo "";

echo "# 运行LLM (测试)"
cd wenda
bash $SCRIPT python
cd ..
echo "#"; echo "";