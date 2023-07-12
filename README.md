

# 文件组织

```
credit-llm/

    knowledge-base/             处理后的知识库(.pdf和.txt格式)

    knowledge-files/            原始的知识库(文件放这里, 支持.pdf/.txt/.doc/.docx)

    run/                        运行脚本
        4-kb_preprocess.sh      STEP 4 - 知识库预处理

    toolkits/                   小工具
        kb_format.py            将知识库文件批量预处理为可用格式(.pdf/.txt)

    wenda/                      闻达项目
        llms/                   模型设置
            llm_glm6b.py        GLM-6B
        plugins/
            common.py           加载配置文件、一些工具
                common.settings 配置项
            gen_data_st.py      知识库处理(RTST模式)
            zhishiku.py         读取知识库
            zhishiku_calc.py    
            zhishiku_rtst.py    读取知识库(RTST模式)
            zhishiku_fess.py    
        config.yml              配置文件
        wenda.py                主程序
        run_GLM6B.sh            运行GLM-6B
    README.md
    run.sh
```

# credits

框架
* wenda(https://github.com/wenda-LLM/wenda)
* langchain(https://github.com/hwchase17/langchain)
* langchain文档(https://api.python.langchain.com/en/latest/api_reference.html)

知识库 - 向量模型
* sentence_transformer(https://github.com/UKPLab/sentence-transformers)
* m3e-base(https://huggingface.co/moka-ai/m3e-base)

知识库 - 向量数据库/向量检索引擎
* Annoy(https://github.com/spotify/annoy)
* Faiss(https://github.com/facebookresearch/faiss)

文档操作
* pdfplumber(https://github.com/jsvine/pdfplumber)

LLM
* GLM-6B(https://github.com/THUDM/ChatGLM-6B)

服务端
* FastAPI(https://fastapi.tiangolo.com/)
* Uvicorn(https://www.uvicorn.org/)