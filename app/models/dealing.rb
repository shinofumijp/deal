class Dealing < ActiveRecord::Base
  belongs_to :client_id
  belongs_to :shop_id
  belongs_to :payment_id
  has_many :details
  has_many :products, through: :details
end
