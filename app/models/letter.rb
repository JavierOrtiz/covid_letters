class Letter < ApplicationRecord

  validates :title,       presence: true, length: { maximum: 120 }
  validates :author_name, presence: true, length: { maximum: 100 }
  validates :author_city, presence: true, length: { maximum: 120 }
  validates :body,        presence: true, length: { maximum: 1200 }
end