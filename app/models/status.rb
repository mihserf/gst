class Status < ActiveRecord::Base
  has_many :member_statuses, :dependent => :destroy
  has_many :members, :through => :member_statuses, :dependent => :destroy
  has_many :translations, :class_name => 'StatusTranslation', :dependent => :destroy
  
  translate_columns :name, :status_name

  include SetIdentName

end
