# rails8-test
## プロジェクト作成手順
```
# gemfileの作成
bundle init

# railsのインストール
railsのコメントアウト外してbundle install

# rails newで各プロジェクトのファイルの作成
bundle exec rails new . --force --skip-bundle

# install
bundle install
```

## mysql設定手順
```
# database.ymlを変更

# gemのインストール
gem "mysql2"
bundle install

# db:create
rails db:create
```

## productsの追加
```
bin/rails generate scaffold product name:string price:integer description:text
```