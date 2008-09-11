class MemberEventDate < ActiveRecord::Base
  belongs_to :member_event

  validates_presence_of :begin_date, :end_date
end
