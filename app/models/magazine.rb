class Magazine < ActiveRecord::Base
  has_one :logo, :class_name => 'MagazineLogo',  :dependent => :destroy
  has_many :articles
  has_many :translations, :class_name => 'MagazineTranslation', :dependent => :destroy

  include SetIdentName
  
end
