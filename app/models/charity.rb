class Charity < ActiveRecord::Base
  has_many :translations, :class_name => 'CharityTranslation', :dependent => :destroy

   translate_columns  :title, :short_text, :body

  include SetIdentName
  
end
