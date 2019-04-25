class Group < ApplicationRecord
  validates :name, :description, :owner_id, :picture_url, :lat, :lng, presence: true

  validates :name, uniqueness: true

  has_many :memberships

  has_many :members,
    through: :memberships,
    source: :user

  belongs_to :owner,
    class_name: 'User',
    foreign_key: :owner_id

  def self.in_bounds(bounds)
    self.where("lat < ?", bounds[:northEast][:lat])
      .where("lat > ?", bounds[:southWest][:lat])
      .where("lng > ?", bounds[:southWest][:lng])
      .where("lng < ?", bounds[:northEast][:lng])
  end
end
