class Property < ApplicationRecord
    has_many :stations, dependent: :destroy
    accepts_nested_attributes_for :stations, allow_destroy: true, reject_if: :all_blank

    validates :property, presence: true
    validates :rente, presence: true, numericality: { only_integer: true }
    validates :address, presence: true
    validates :buildingAge, presence: true, numericality: { only_integer: true }
    validates :remark, length: { maximum: 255 }, presence: true

end
