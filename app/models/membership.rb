class Membership < ApplicationRecord
  validates :group_id, :user_id, presence: true
end
