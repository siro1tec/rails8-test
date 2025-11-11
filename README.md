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

## jsbundlingへの切り替え
```
# gemのインストール
gem "jsbundling-rails"
bundle install

# esbuildのインストール
bin/rails javascript:install:esbuild
※yarnはnpmにいい感じに書き換え

# foremanのインストール
gem "foreman"
bundle install
```

## stimlusの導入
```
npm install @hotwired/stimulus
javascript/以下にapplication.jsやcontrollersを作る
```

## turboの導入
```
npm install @hotwired/turbo-rails
javascript/application.jsでimportを記述
```
