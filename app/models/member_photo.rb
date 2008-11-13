class MemberPhoto < ActiveRecord::Base
  belongs_to :member

  has_attachment  :max_size => 2.megabytes, :content_type => :image, :resize_to => 'x300',   :thumbnails => { :thumb => 'x50', :view => 'x120' },
    :storage => :file_system, :path_prefix => 'public/photos/members', :processor => 'ImageScience'
  validates_as_attachment

  

end
