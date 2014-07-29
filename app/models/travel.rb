class Travel < ActiveRecord::Base
  #belongs_to :user

  has_many :schedulings, dependent: :destroy
  has_many :users, through: :schedulings
  has_many :costs, dependent: :destroy

  def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |travel|
      csv << travel.attributes.values_at(*column_names)
    end
  end
end
end
