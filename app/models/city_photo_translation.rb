class CityPhotoTranslation < ActiveRecord::Base
  belongs_to :localedb
  belongs_to :city_photo
end
