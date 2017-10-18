
class House < ActiveRecord::Base
  validates :address, presence: true 
  has_many :residents,
    primary_key: :id,
    foreigh_key: :house_id,
    class_name: :Person

end
