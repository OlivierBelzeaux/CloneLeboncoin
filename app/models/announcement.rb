class Announcement < ApplicationRecord
  belongs_to :user
  CATEGORIES = ["automobile", "éléctromenager", "ameublement"]

  validates :category, inclusion: { in: CATEGORIES }
  validates :title, :url_photo, :price, :description, presence: true
  validates :price, numericality: { greater_than: 0 }
end
