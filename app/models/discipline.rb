class Discipline < ActiveRecord::Base
  has_and_belongs_to_many :projects
end
