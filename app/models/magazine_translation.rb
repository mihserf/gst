class MagazineTranslation < ActiveRecord::Base
  belongs_to :localedb
  belongs_to :magazine
end
