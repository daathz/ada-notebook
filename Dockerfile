FROM python:3.6.5

LABEL maintainer="Viktor Novák <novk.viktor@gmail.com>"

WORKDIR /app

RUN pip --no-cache-dir install --upgrade pip

RUN pip --no-cache-dir install numpy pandas seaborn jupyter sklearn

EXPOSE 8888

VOLUME /app

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]