class StoryTranslation < ActiveRecord::Base
  belongs_to :localedb
  belongs_to :story
end
