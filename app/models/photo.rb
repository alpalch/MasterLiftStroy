class Photo < ActiveRecord::Base
  has_attached_file :image, :styles => { :small => "150x150>", :small_gallery => '100x100'},
                    :url => "/assets/photos/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/photos/:id/:style/:basename.:extension"
  validates_attachment_size :image, :less_than => 5.megabytes
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
end
