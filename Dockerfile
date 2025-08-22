FROM ruby:3.4.5

RUN apt-get update -qq && \
    apt-get install -y less \
                       vim \
                       curl

RUN curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && \
    apt-get install -y nodejs

RUN npm install -g npm@6

RUN gem install bundler -v '2.7.1'

WORKDIR /rails8-test

# Gemの依存関係をインストール
COPY Gemfile* ./
RUN bundle install

# JavaScriptの依存関係をインストール
# COPY package.json ./
# RUN npm install

# エイリアスを設定
COPY ./.alias /root
RUN cat /root/.alias >> /root/.bashrc
