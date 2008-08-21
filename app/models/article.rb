class Article < ActiveRecord::Base
  
  has_many :translations, :class_name => 'ArticleTranslation', :dependent => :destroy

   translate_columns  :title,  :short_text, :body

end
