class OpinionTranslation < ActiveRecord::Base
  belongs_to :localedb
  belongs_to :opinion
end
