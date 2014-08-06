class Cost < ActiveRecord::Base
  belongs_to :travel
  belongs_to :tipo
  validates :valor, presence: true
  validates :valor, numericality: true
  validates :cover, :attachment_presence => true

  has_attached_file :cover, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
   		validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/



def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |cost|
      csv << cost.attributes.values_at(*column_names)
    end
  end
end


end
