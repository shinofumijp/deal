class Detail < ActiveRecord::Base
  belongs_to :dealing
  belongs_to :product
end
