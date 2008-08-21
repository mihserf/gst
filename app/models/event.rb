class Event < ActiveRecord::Base
  has_many :translations, :class_name => 'EventTranslation', :dependent => :destroy

  translate_columns  :title, :short_text, :body



end
