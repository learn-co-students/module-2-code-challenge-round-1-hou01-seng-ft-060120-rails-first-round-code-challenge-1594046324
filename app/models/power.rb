class Power < ApplicationRecord
    has_many :heroine_powers, dependent: :delete_all
    has_many :heroines, through: :heroine_powers
end
