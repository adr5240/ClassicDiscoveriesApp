# == Schema Information
#
# Table name: authors
#
#  id          :integer          not null, primary key
#  fname       :string           not null
#  lname       :string           not null
#  description :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  mid_name    :string
#

class Author < ActiveRecord::Base
  validates :fname, :lname, :description, presence: true

  def self.find_by_name(full_name)
    fname = full_name.split(' ')[0]
    lname = full_name.split(' ')[-1]
    return Author.find_by(fname: fname, lname: lname)
  end

  def full_name
    return "#{fname} #{mid_name} #{lname}"
  end

end
