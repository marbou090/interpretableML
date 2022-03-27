# docker使い方
1. `docker compose up -d`でコンテナ起動
2. `docker exec -it python3.6 bash`で入る
3. `jupyter notebook --port=8888 --ip=0.0.0.0 --allow-root --NotebookApp.token=''`でjupyter起動

## ライブラリインストール
1. `docker compose up -d`でコンテナ起動
2. `docker exec -it python3.6 bash`で入る
3. `pip install`
