# == Schema Information
#
# Table name: authors
#
#  id                 :integer          not null, primary key
#  fname              :string           not null
#  lname              :string           not null
#  description        :string           not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
