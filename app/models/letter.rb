class Letter < ApplicationRecord
  include PgSearch::Model

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
  validates :body,        presence: true

  enum status: [:pending, :published, :rejected]
end
