class CityPhoto < ActiveRecord::Base
  belongs_to :city
  has_many :translations, :class_name => 'CityPhotoTranslation', :dependent => :destroy

  translate_columns :description

  has_attachment  :max_size => 2.megabytes, :content_type => :image, :resize_to => '420x300>',   :thumbnails => { :thumb => '100x100', :view => 'x180' },
    :storage => :file_system, :path_prefix => 'public/photos/cities', :processor => 'ImageScience'
  validates_as_attachment
end
