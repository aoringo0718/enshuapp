# README

## 動作確認済み環境
* Microsoft Windows [Version 10.0.19045.2311] 
* WSL2 
* Ubuntu-18.04
* docker-compose 1.27.4

M1チップのMacを使用している人は高確率で起動時エラーが出るため，Windows端末かIntel CPUのMacでの動作を推奨します．

## Docker で実行するまでの流れ

0. `sudo service docker start`でdockerを起動
1. クローンしたディレクトリに移動
1. `docker-compose build`
4. `docker-compose run web bundle exec rails webpacker:install`
3. `docker-compose run web rails db:create`
4. `docker-compose up`
5. `Listening on http://0.0.0.0:3000`が出たら`http://localhost:3000/` のリンクを踏む

トップページが出ればOK

（エラーが出た場合，`docker-compose run web rails db:reset`して`docker-compose up`）


## 編集時の注意点
* **各々わかりやすい名前(担当するエリア名を含めるなど)のブランチを作成し，更新作業を行う**

* [担当するエリア名]は以下の規則になっている．
  * スーパー・ニンテンドー・ワールド™: `nintendo`
  * ニューヨーク・エリア: `newyork`
  * ジュラシック・パーク: `jurassic`
  * ハリウッド・エリア: `hollywood`
  * ウィザーディング・ワールド・オブ・ハリー・ポッター™: `hallypotter`

* HTMLを記述するファイル: `/app/views/home/[担当するエリア名].html.erb`

* 反映されるページ: `http://localhost:3000/[担当するエリア名]`
  * コンテナを立ち上げたまま編集し，保存してChromeの該当ページを更新するとリアルタイムに変更を確認できる．
  * トップページに各ページへのリンクを記載している．

* 画像を挿入したい場合の，画像格納フォルダ: `/app/assets/images/[担当するエリア名]`
  * 表示方法は[この記事](https://qiita.com/hacchi56/items/b2cc210ed3978fe0b126)を参考にする．
  * それでもわからなければ`/app/views/home/top.html.erb`に記載のコードを参考にする．


## その他
* bootstrapを一律で導入済み．
  * cssファイルのテンプレートのようなもの．フォームやボタンの処理などをタグを指定するだけで行える．
  * グリッドシステム(縦に分割して要素を配置できる)など，いろいろ便利なので，使いたい人は各自検索してください．
* 共通のヘッダーを付けるかなどは未定です． 
* わからないことがあれば[Issue](https://github.com/aoringo0718/enshuapp/issues)を建ててもらえたらメール通知ですぐ気づけると思います．
* トップページがWebpacker::Manifest::MissingEntryErrorのようなエラーで表示されないときは，
`docker-compose run --rm web yarn install` を実行してみてください．環境：Windows
([参考にした記事](https://qiita.com/ashketcham/items/48d64e960d436f8b6f78))
