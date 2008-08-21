class Member < ActiveRecord::Base
  has_many :member_statuses, :dependent => :destroy
  has_many :statuses, :through => :member_statuses, :dependent => :destroy
  has_many :translations, :class_name => 'MemberTranslation', :dependent => :destroy
  has_one :member_photo, :dependent => :destroy
  has_one :success_story, :dependent => :destroy
  has_one :story, :dependent => :destroy
  has_one :opinion, :dependent => :destroy
  belongs_to :city
  translate_columns  :first_name, :last_name, :middle_name, :status
  

  def name
    last_name+" "+first_name.first
  end

  def name_view
    first_name+" "+last_name.first
  end

  
end
