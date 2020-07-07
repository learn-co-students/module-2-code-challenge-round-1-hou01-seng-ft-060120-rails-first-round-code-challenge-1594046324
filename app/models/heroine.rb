class Heroine < ApplicationRecord
    has_many :heroine_powers, dependent: :delete_all
    accepts_nested_attributes_for :heroine_powers

    has_many :powers, through: :heroine_powers

    validates :name, presence: :true
    validates :super_name, presence: :true, uniqueness: {case_sensitive: false}
end
