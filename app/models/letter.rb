class Letter < ApplicationRecord
  attr_accessor :title, :author_name, :author_city, :body

  validates :title,       presence: true, length: { maximum: 120 }
  validates :author_name, presence: true, length: { maximum: 100 }
  validates :author_city, presence: true, length: { maximum: 120 }
  validates :body,        presence: true, length: { maximum: 1200 }
end
