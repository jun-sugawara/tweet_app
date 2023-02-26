# == Schema Information
#
# Table name: tweets
#
#  id         :bigint           not null, primary key
#  image      :text(65535)
#  name       :string(255)
#  text       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class TweetSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id, :username
  belongs_to :user

  def username
    object.user.name
  end
end
