class TweetsController < ApplicationController
  
  def index
    tweets = Tweet.all 
    render json: tweets   
  end

  def create
    tweet = Tweet.new(tweet_params)
    # 後でこっちで動くか確認
    # todo.save ? render json: tweet : render json: tweet.errors
    if tweet.save
      render json: tweet
    else
      render json: tweet.errors
    end
  end

  def destroy
    tweet = Tweet.find(params[:id])
    # 後でこっちで動くか確認
    # rendor json: tweet if tweet.destroy
      if tweet.destroy
        render json: tweet
      end
  end

  private

  def tweet_params
    params.require(:tweet).permit(:image, :text)
  end
  
end
