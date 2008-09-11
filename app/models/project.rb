class Project < ActiveRecord::Base
  has_many :project_photos, :dependent => :destroy
  has_many :translations, :class_name => 'ProjectTranslation', :dependent => :destroy
  translate_columns :name, :description, :short_text

  validates_presence_of :name, :description, :short_text

  include SetIdentName
  
end
