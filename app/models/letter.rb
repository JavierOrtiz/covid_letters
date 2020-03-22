class Letter < ApplicationRecord
  include PgSearch

  pg_search_scope(
        :search,
        against: %i(
        title
        author_name
        author_city
        body
      ),
        using: {
            tsearch: {
                dictionary: "spanish",
            }
        }
    )

  validates :title,       presence: true, length: { maximum: 120 }
  validates :author_name, presence: true, length: { maximum: 100 }
  validates :author_city, presence: true, length: { maximum: 120 }
  validates :body,        presence: true, length: { maximum: 1200 }
end
