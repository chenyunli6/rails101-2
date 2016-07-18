class Group < ApplicationRecord
  belongs_to :user
  has_many :posts
  has_many :groups_relationships
  has_many :participated_groups, :through => :group_relationships, :source => :group
  has_many :members, through: :group_relationships, source: :user

  validates :title, presence:true
end
