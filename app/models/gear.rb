class Gear < ApplicationRecord
  has_attached_file :image, styles: {medium: "10000x10000>", thumb: "10000x10000>"}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  belongs_to :brand
  belongs_to :type
  validates :name, presence: true, length: {minimum: 5, maximum: 30}
  validates :description, presence: true, length: {minimum: 10}
  validates :image, presence: true
  validates :price, presence: true, numericality: {greater_than_or_equal_to: 1}
  validates :inventory, presence: true, numericality: {greater_than_or_equal_to: 1}
  include PgSearch
  pg_search_scope :search_name, against: [:name]
end
