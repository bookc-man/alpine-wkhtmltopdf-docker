FROM alpine

# 安装运行环境
RUN apk add libgcc libstdc++ libx11 glib libxrender libxext libintl libcrypto1.0 libssl1.0 ttf-freefont fontconfig
# wkhtmltopdf
COPY wkhtmltox /bin/
RUN chmod +x /bin/wkhtmltopdf

# 安装字体
RUN mkdir -p /usr/share/fonts/chinese/TrueType/
RUN cp simsun.ttc /usr/share/fonts/chinese/TrueType/
RUN cp simsun.ttf /usr/share/fonts/chinese/TrueType/

# 其他操作