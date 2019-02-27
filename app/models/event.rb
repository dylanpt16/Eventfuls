class Event < ApplicationRecord
  validates :name, :description, :owner_id, presence: true
end
