class Store < ActiveRecord::Base
  has_many :employees # each store can have many employees
end
