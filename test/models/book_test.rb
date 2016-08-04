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

require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
