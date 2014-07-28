class Cost < ActiveRecord::Base
  belongs_to :travel
  belongs_to :tipo
end
