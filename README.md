# README

## 動作確認済み環境
* Microsoft Windows [Version 10.0.19045.2311] 
* WSL2 
* Ubuntu-18.04
* その他docker等の必要な環境は各自用意する

## Docker で実行するまでの流れ

0. `sudo service docker start`でdockerを起動
1. `docker-compose build`
2. `docker-compose run web rails db:migrate`
3. `docker-compose run web rails db:create`
4. `docker-compose up`
5. `Listening on http://0.0.0.0:3000`が出たら`http://localhost:3000/` のリンクを踏む

'Yay! You're on Rails!'が表示されれば OK

