class Post < ApplicationRecord
  validates :title, :body, presence: true
  
  belongs_to :user

  def owned_by?(user)
    self.user_id == (user.try(:id) || user)
  end
end
