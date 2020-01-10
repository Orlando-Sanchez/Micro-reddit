class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :content, presence: true, length: { maximum: 50 },
                      uniqueness: { case_sensitive: false }
  validates :user_id, presence: true
end
