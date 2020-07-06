class Heroine < ApplicationRecord
    has_and_belongs_to_many :powers

    validates :name, presence: true
    validates :super_name, presence: true 
    
end
