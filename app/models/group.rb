class Group < ApplicationRecord
  validates :name, :description, :host_id, presence: true
  validates :host_id, uniqueness: true

  has_many :memberships
  has_many :members,
    through: :memberships,
    source: :user

  belongs_to :user
end
