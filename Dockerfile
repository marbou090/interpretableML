FROM python:3.6

RUN apt-get update
RUN apt install -y locales && localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9

# 日本語 font のインストール
RUN apt-get install -y fonts-noto-cjk
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y libgl1-mesa-dev

# python ライブラリのインストール
RUN python -m pip install pandas
RUN python -m pip install numpy
RUN python -m pip install matplotlib
RUN python -m pip install jupyterlab
RUN python -m pip install notebook
RUN python -m pip install machine-learning-datasets
RUN python -m pip install git+https://github.com/SauceCat/PDPbox.git
RUN python -m pip install --upgrade pycebox
RUN python -m pip install scikit-learn