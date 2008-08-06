class Opinion < ActiveRecord::Base
  belongs_to :city
  has_one :opinion_photo
end
