class ProjectPhoto < ActiveRecord::Base
  belongs_to :project
  has_many :translations, :class_name => 'ProjectPhotoTranslation', :dependent => :destroy
  translate_columns  :description

  has_attachment  :max_size => 2.megabytes, :content_type => :image, :resize_to => '420x300>',   :thumbnails => { :thumb => [50, 50], :view => 'x150' },
    :storage => :file_system, :path_prefix => 'public/photos/projects', :processor => 'ImageScience'
  validates_as_attachment

  named_scope :logo, :conditions => {:logo => true}
  
end
