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
#  mid_name           :string
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Author < ActiveRecord::Base
  validates :fname, :lname, :description, presence: true
  
  has_attached_file :image, default_url: "authors/missing.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  def self.find_by_name(full_name)
    fname = full_name.split(' ')[0]
    lname = full_name.split(' ')[-1]
    return Author.find_by(fname: fname, lname: lname)
  end

  def full_name
    return "#{fname} #{mid_name} #{lname}"
  end

end
