class Member < ActiveRecord::Base
  has_many :member_statuses
  has_many :statuses, :through => :member_statuses
  belongs_to :city

  def name
    last_name+" "+first_name.first
  end
end
