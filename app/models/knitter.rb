class Knitter < ActiveRecord::Base
  # Could use some validations in the models
  has_many :projects
  has_secure_password
end
