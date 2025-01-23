# 使用官方 Node.js 镜像作为基础镜像
FROM node:16

# 设置工作目录
WORKDIR /app

# 将当前目录的所有文件复制到容器的工作目录
COPY . .

# 安装项目依赖
RUN npm install

# 开放容器的 8080 端口（可以根据你的项目修改端口）
EXPOSE 8080

# 启动项目
CMD ["npm", "run", "serve"]
