class Group < ApplicationRecord
  has_many :group_users
  has_many :comments
  has_many :users, through: :group_users

  validates :name, presence: true

  def show_last_coment
    if last_comment.content?
      last_comment.content
      else
        '画像が投稿されています'
      end
    else
      'まだコメントはありません。'
    end
end