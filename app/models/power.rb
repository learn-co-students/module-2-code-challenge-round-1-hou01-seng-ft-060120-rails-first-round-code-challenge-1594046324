class Power < ApplicationRecord
    has_many :heroine_powers
    has_many :heroines, through: :heroines_powers
end
