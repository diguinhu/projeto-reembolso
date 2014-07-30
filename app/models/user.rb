class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  #has_many :schedulings, dependent: :destroy
  #has_many :travels, through: :schedulings
  has_many :travels
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
   		validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
