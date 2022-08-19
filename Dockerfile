# from：从哪继承过来,表示继承自node的一个镜像
FROM node
# LABEL：进行标识，没有特殊意思
LABEL name="vue-back"
LABEL version="1.0"
# COPY：把当前目录（.）下的所有文件(vue-back下的所有文件)都拷贝到容器下的/app里面去
# node镜像里面会有一个app，没有就会自动创建
COPY . /app
# 指定工作目录,在镜像里面cd /app进去app目录里
WORKDIR /app
# RUN：运行命令，安装当前项目的依赖包
RUN npm install
# EXPOSE：向外暴露3000端口
EXPOSE 3000
# CMD：当我们基于镜像生成容器之后，会执行npm start
CMD npm start 