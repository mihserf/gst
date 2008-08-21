class MemberTranslation < ActiveRecord::Base
  belongs_to :localedb
  belongs_to :member
end
