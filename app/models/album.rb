class Album < ActiveRecord::Base
  has_many :album_photos, :dependent => :destroy
  has_many :translations, :class_name => 'AlbumTranslation', :dependent => :destroy
  translate_columns :title, :description
  named_scope :main_album, :conditions =>{:main=>true}

  include SetIdentName
  
end
