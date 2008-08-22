class AlbumPhotoTranslation < ActiveRecord::Base
  belongs_to :localedb
  belongs_to :album_photo
end
