class Heroine < ApplicationRecord
    validates :name, uniqueness: true
    validates :name, presence: true
    validates :super_name, presence: true
    has_many :heroinepowers
    has_many :powers, through: :heroinepowers
end
