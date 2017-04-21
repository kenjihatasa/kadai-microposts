class Micropost < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :users
  has_many :favorites
  has_many :favoritings, through: :favorites, source: :micropost
  
  
  def favoriting?(other_user)
    self.favoritings.include?(other_user)
  end
end
