class SuccessStoryTranslation < ActiveRecord::Base
  belongs_to :localedb
  belongs_to :success_story
end
