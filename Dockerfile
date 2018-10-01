FROM python:3.6.5

LABEL maintainer="Viktor Novák <novk.viktor@gmail.com>"

COPY . /app

COPY ./jupyter_notebook_config.py /root/.jupyter/

WORKDIR /app

RUN pip --no-cache-dir install --upgrade pip

RUN pip --no-cache-dir install -r requirements.txt

EXPOSE 8888

VOLUME /app

CMD ["jupyter", "notebook", "--allow-root"]