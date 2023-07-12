# Zhao Zifeng @ 2023.07

# 对args.file_dir下文件批量处理为合格格式
# 若为.txt或.pdf直接移动到args.kb_dir
# 若为.doc或.docx使用LibreOffice导出为.pdf

# 依赖
import argparse
import os
import tqdm

# 参数解析
parser = argparse.ArgumentParser()
parser.add_argument("--files_dir", type=str)
parser.add_argument("--kb_dir", default="./knowledge-base")
args = parser.parse_args()

# 主程序
if __name__ == "__main__":

    # 批处理后的路径
    try:
        os.makedirs(args.kb_dir)
    except:
        pass

    # 遍历文件
    file_list = os.listdir(args.files_dir)
    for file in tqdm.tqdm(file_list):

        format = file.split('.')[1]
        file_from = os.path.join(args.files_dir, file)
        file_to = os.path.join(args.kb_dir, file)

        if format in ["pdf", "txt"]:
            os.system(f"mv {file_from} {file_to}") # 直接移动
        if file.split(".")[1] in ["doc", "docx"]:
            os.system(f"libreoffice --invisible --convert-to pdf --outdir {args.kb_dir} {file_from}") # 格式转换

    # 清除无关文件
    for file in os.listdir(args.kb_dir):
        format = file.split('.')[1]
        if format not in ["pdf", "txt"]:
            os.system(f"rm {os.path.join(args.kb_dir, file)}")