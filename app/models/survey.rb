class Survey < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :title, presence: true
  validates :comment, presence: true
  validates :user_name, presence: true
  validates :user_email, presence: true, format: { with: VALID_EMAIL_REGEX }

end
