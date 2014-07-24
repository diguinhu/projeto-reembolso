class Travel < ActiveRecord::Base
  #belongs_to :user

  has_many :schedulings
  has_many :users, through: :schedulings
  has_many :costs
end
