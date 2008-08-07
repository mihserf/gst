class City < ActiveRecord::Base
  belongs_to :country
  has_many :opinions
  has_many :members
#  def to_param
#    "#{ident_name}"
#  end
end
