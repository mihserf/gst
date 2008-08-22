class ProjectTranslation < ActiveRecord::Base
  belongs_to :localedb
  belongs_to :project
end
