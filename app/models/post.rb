class Post < ApplicationRecord
  belongs_to :user
  belongs_to :group
  validates :content, presence: true
  scope: recent,-> {orer("create_at DESC")}
end
