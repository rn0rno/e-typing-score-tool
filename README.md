# README

## なんこれ
raisをdocker上で動かせるようにしておいたファイル群

## get started

```
$ docker-compose build
$ docker-compose run web bundle exec rake db:setup
$ docker-compose up
```

## 参考
- おおまかな流れはこちらを参考にさせていただきました
    - [docker-compose で Rails の開発環境を作る](https://qiita.com/skyriser/items/2cf98b747ed6577cc5ee)
- 生じた障害
    - [rails sコマンド実行時に「Could not find a JavaScript runtime.」とエラーが出る場合の対処法](https://qiita.com/azusanakano/items/771dc9919f347de061d7)
    - [bundle installのpgインストールでエラー](http://easyramble.com/bundle-install-pg-error.html)
- `rails new`したときのコマンド
    `$ bundle exec rails new -B -d postgresql --skip-turbolinks .`