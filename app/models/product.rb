class Product < ActiveRecord::Base
  has_many :details
  has_many :dealings, through: :details
end
