class Announcement < ApplicationRecord
  validates :group_id, :user_id, :content, presence: true

  belongs_to :group
  belongs_to :user

  has_many :replies
end
