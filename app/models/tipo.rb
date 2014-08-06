class Tipo < ActiveRecord::Base
		validates :description, uniqueness: true
		validates :description, presence: true
		has_many :costs, dependent: :destroy
end
