class Profile < ActiveRecord::Base
  has_many :jobs
  has_many :schools
  has_many :skills
  has_many :skillkinds
  has_many :skills

  has_attached_file :photo, :styles => { :big => "600x600#", :medium => '300x300#', :small => '150x150#', :icon => '75x75#', :tiny => '40x40#' }, :default_url => "/images/:style/missing_bio.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  has_attached_file :section_one, :styles => { :large => "1600x1600", :big => "600x600#", :medium => '300x300#', :small => '150x150#', :icon => '75x75#', :tiny => '40x40#' }, :default_url => "/images/:style/missing_bio.png"
  validates_attachment_content_type :section_one, :content_type => /\Aimage\/.*\Z/

  has_attached_file :section_two, :styles => { :large => "1600x1600", :big => "600x600#", :medium => '300x300#', :small => '150x150#', :icon => '75x75#', :tiny => '40x40#' }, :default_url => "/images/:style/missing_bio.png"
  validates_attachment_content_type :section_two, :content_type => /\Aimage\/.*\Z/

  has_attached_file :section_three, :styles => { :large => "1600x1600", :big => "600x600#", :medium => '300x300#', :small => '150x150#', :icon => '75x75#', :tiny => '40x40#' }, :default_url => "/images/:style/missing_bio.png"
  validates_attachment_content_type :section_three, :content_type => /\Aimage\/.*\Z/


end
