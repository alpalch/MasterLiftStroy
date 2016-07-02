class Post < ActiveRecord::Base
  validates_presence_of :content, presence: true
  has_attached_file :photo, :styles => { :small => "180x180>" },
    :url => "/assets/posts/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/posts/:id/:style/:basename.:extension"
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']


  #Scopes for display specific content on every page
  scope :main,         -> { where(page: 'index') }
  scope :service_lift, -> { where(page: 'service_lift') }
  scope :shaft_lift,   -> { where(page: 'shaft_lift') }
  scope :tower_lift,   -> { where(page: 'tower_lift') }
  scope :contacts,     -> { where(page: 'contacts') }
  scope :service,      -> { where(page: 'services') }


end
