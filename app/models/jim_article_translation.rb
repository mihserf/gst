class JimArticleTranslation < ActiveRecord::Base
  belongs_to :localedb
  belongs_to :jim_article
end
