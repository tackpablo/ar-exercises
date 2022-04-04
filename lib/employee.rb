class Employee < ActiveRecord::Base
  belongs_to :store # each employee belongs to a store
end
