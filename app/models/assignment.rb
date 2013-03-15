# == Schema Information
#
# Table name: assignments
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  group_size :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Assignment < ActiveRecord::Base
  attr_accessible :name, :group_size
  has_many :students
end
