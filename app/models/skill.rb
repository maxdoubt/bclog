class Skill < ActiveRecord::Base
  belongs_to :skillkind
  belongs_to :profile
end
