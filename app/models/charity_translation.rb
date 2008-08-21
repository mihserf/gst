class CharityTranslation < ActiveRecord::Base
  belongs_to :localedb
  belongs_to :charity
end
