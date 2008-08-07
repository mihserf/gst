class Status < ActiveRecord::Base
  has_many :member_statuses
  has_many :members, :through => :member_statuses
end
