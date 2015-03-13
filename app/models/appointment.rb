class Appointment < ActiveRecord::Base
  validates :time, presence: true
  belongs_to :vet
  belongs_to :puppy
end
