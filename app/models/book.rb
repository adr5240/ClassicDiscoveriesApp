# == Schema Information
#
# Table name: books
#
#  id                      :integer          not null, primary key
#  title                   :string           not null
#  description             :text             not null
#  author_id               :integer          not null
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  book_cover_file_name    :string
#  book_cover_content_type :string
#  book_cover_file_size    :integer
#  book_cover_updated_at   :datetime
#

class Book < ActiveRecord::Base
    validates :title, :description, :author_id, presence: true

    has_attached_file :book_cover, default_url: "book_covers/defbookcover.jpg"
    validates_attachment_content_type :book_cover, content_type: /\Aimage\/.*\Z/

    belongs_to(
        :author,
        class_name: 'Author',
        primary_key: :id,
        foreign_key: :author_id
    )

    has_many(
        :bookshelves,
        through: :shelves,
        source: :bookshelves
    )

    has_many(
        :reviews,
        class_name: 'Review',
        primary_key: :id,
        foreign_key: :book_id
    )

    has_many(
        :shelves,
        dependent: :destroy,
        class_name: 'Shelf',
        primary_key: :id,
        foreign_key: :book_id
    )

end
