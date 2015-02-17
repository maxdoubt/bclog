class Job < ActiveRecord::Base
  belongs_to :profile

  has_attached_file :image, :styles => { :big => "600x600#", :medium => '300x300#', :small => '150x150#', :icon => '75x75#', :tiny => '40x40#' }, :default_url => "/images/:style/missing_bio.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
