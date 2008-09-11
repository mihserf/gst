class Opinion < ActiveRecord::Base
  belongs_to :member
  
  has_many :translations, :class_name => 'OpinionTranslation', :dependent => :destroy

  validates_presence_of :body

  translate_columns  :body

  
    
end
