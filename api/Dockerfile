FROM ruby:3.1.2

RUN apt-get update -qq && \
    apt-get install -y build-essential \ 
                       libpq-dev \        
                       nodejs npm && npm install n -g && n 16.0.0 \
   && rm -rf /var/lib/apt/lists/* 

# appnameは指定のものへ変更
RUN mkdir /tweetapp
ENV APP_ROOT /app
WORKDIR $APP_ROOT

ADD ./Gemfile $APP_ROOT/Gemfile
ADD ./Gemfile.lock $APP_ROOT/Gemfile.lock

# これやらないとMysqlエラー起きることある
RUN gem update --system 3.4.4 && \
    bundle install