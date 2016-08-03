# == Schema Information
#
# Table name: books
#
#  id          :integer          not null, primary key
#  title       :string           not null
#  description :text             not null
#  author_id   :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Book < ActiveRecord::Base
  validates :title, :description, :author_id, presence: true

  belongs_to(
    :author,
    class_name: 'Author',
    primary_key: :id,
    foreign_key: :author_id
  )

end
