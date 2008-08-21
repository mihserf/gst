class JimArticle < ActiveRecord::Base
  
  has_many :translations, :class_name => 'JimArticleTranslation', :dependent => :destroy
  translate_columns  :title, :short_text, :body


end
