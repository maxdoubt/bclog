class Resume < ActiveRecord::Base
  belongs_to :profile
  has_and_belongs_to_many :skills
  accepts_nested_attributes_for :skills
end
