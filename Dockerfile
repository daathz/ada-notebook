FROM python:3.7.1

LABEL maintainer="Viktor Novák <novk.viktor@gmail.com>"

COPY ./requirements.txt /app/

COPY ./jupyter_notebook_config.py /root/.jupyter/

WORKDIR /app

RUN pip --no-cache-dir install --upgrade pip

RUN pip --no-cache-dir install -r requirements.txt

EXPOSE 8888

VOLUME /app

CMD ["jupyter", "lab", "--allow-root"]