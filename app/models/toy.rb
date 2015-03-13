class Toy < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :puppy
end
