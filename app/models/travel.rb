class Travel < ActiveRecord::Base
  #belongs_to :user

  has_many :schedulings, dependent: :destroy
  has_many :users, through: :schedulings
  has_many :costs, dependent: :destroy
end
