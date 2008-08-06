class City < ActiveRecord::Base
  belongs_to :country
  has_many :opinions
#  def to_param
#    "#{ident_name}"
#  end
end
