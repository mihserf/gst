class Article < ActiveRecord::Base
  belongs_to :magazine
  has_many :translations, :class_name => 'ArticleTranslation', :dependent => :destroy

   translate_columns  :title,  :short_text, :body

  include SetIdentName
  
end
