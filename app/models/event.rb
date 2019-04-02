class Event < ApplicationRecord
  validates :name,
    :description,
    :owner_id,
    :lat,
    :lng,
    :picture_url,
    :date,
    presence: true
  validates :name, uniqueness: true

  has_many :attendances

  has_many :attendees,
    through: :attendances,
    source: :user

  def self.in_bounds(bounds)
    self.where("lat < ?", bounds[:northEast][:lat])
      .where("lat > ?", bounds[:southWest][:lat])
      .where("lng > ?", bounds[:southWest][:lng])
      .where("lng < ?", bounds[:northEast][:lng])
  end
end
