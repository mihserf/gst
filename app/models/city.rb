class City < ActiveRecord::Base
  belongs_to :country
  has_many :members
  has_many :city_photos, :dependent => :destroy
  has_many :translations, :class_name => 'CityTranslation', :dependent => :destroy
  has_one :city_coord
  
  translate_columns :name, :body
  
  include SetIdentName
   


  
    

end
