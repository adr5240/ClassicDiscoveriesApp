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

class Author < ActiveRecord::Base
    validates :fname, :lname, :description, presence: true

    has_attached_file :image, default_url: "authors/missing.jpg"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

    has_many(
        :books,
        class_name: 'Book',
        primary_key: :id,
        foreign_key: :author_id
    )

    def self.find_by_name(full_name)
        lname = full_name.split(' ')[-1]
        index = full_name.index(lname)
        fname = full_name.slice(0, index - 1)
        return Author.find_by(fname: fname, lname: lname)
    end

    def full_name
        return "#{fname} #{lname}"
    end

end
