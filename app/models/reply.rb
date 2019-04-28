class Reply < ApplicationRecord
  validates :announcement_id, :user_id, :content, presence: true

  belongs_to :announcement
  belongs_to :user
end
