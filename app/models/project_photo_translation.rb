class ProjectPhotoTranslation < ActiveRecord::Base
  belongs_to :localedb
  belongs_to :project_photo
end
