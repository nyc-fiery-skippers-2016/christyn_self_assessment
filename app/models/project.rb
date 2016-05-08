class Project < ActiveRecord::Base
  has_many :taggings
  has_many :tags, through: :taggings
  belongs_to :knitter
end
