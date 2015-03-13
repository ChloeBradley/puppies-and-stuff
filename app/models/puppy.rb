class Puppy < ActiveRecord::Base
  validates :name, presence: true
  has_many :vets, through: :appointments
  has_many :appointments

  belongs_to :owner
  has_many :toys
end
