# 使用官方的 Python 基础镜像
FROM python:3.9-slim

# 设置工作目录
WORKDIR /app

# 复制本地代码到容器中
COPY . /app

# 安装 Python 依赖，包括 pandas 和 matplotlib
RUN pip install --no-cache-dir pandas matplotlib

# 运行 tkinter 需要安装一些额外的库
RUN apt-get update && apt-get install -y \
    tk \
    && rm -rf /var/lib/apt/lists/*

# 命令行运行 Python 脚本
CMD ["python", "./FinalProject/KayiWong605.py"]
