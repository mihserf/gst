class StatusTranslation < ActiveRecord::Base
  belongs_to :status
  belongs_to :localedb
end
