class MemberEventTranslation < ActiveRecord::Base
  belongs_to :localedb
  belongs_to :member_event
end
