class Event < ApplicationRecord
  validates :name,
    :description,
    :owner_id,
    :lat,
    :lng,
    :picture_url,
    presence: true
  validates :name, uniqueness: true
end
