class ArticleTranslation < ActiveRecord::Base
  belongs_to :localedb
  belongs_to :article
end
