class Country < ActiveRecord::Base
  has_many :cities

#  def to_param
#    "#{ident_name}"
#  end
end
