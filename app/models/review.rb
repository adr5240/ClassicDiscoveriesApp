# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  book_id    :integer          not null
#  rating     :integer          not null
#  date       :datetime         not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  body       :text             not null
#

class Review < ActiveRecord::Base
    validates :user_id, :book_id, :rating, :body, :date, presence: true
    validates :user_id, uniqueness: { scope: :book_id }
    validates :rating, numericality: { greater_than: 0, less_than_or_equal_to: 5 }

    belongs_to(
        :book,
        class_name: 'Book',
        primary_key: :id,
        foreign_key: :book_id
    )

    belongs_to(
        :user,
        class_name: 'User',
        primary_key: :id,
        foreign_key: :user_id
    )

end
