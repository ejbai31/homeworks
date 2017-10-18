

class Name < ActiveRecord::Base
  validates :name, :house, presence: true 
  belongs_to :house,
    primary_key: :id,
    foreigh_key: :house_id,
    class_name: :House


end
