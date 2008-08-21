class Country < ActiveRecord::Base
  has_many :cities, :dependent => :destroy
  has_one :map, :dependent => :destroy
  has_many :translations, :class_name => 'CountryTranslation', :dependent => :destroy
  translate_columns :body,:name

  
#  def to_param
#    "#{ident_name}"
#  end

  
end
