class Group < ApplicationRecord
  validates :name, :description, :host_id, presence: true

  has_many :memberships

  has_many :users,
    through: :memberships

  belongs_to :host,
    class_name: 'User',
    foreign_key: :host_id

end
