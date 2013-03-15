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

require 'spec_helper'

describe Assignment do
  describe '.new' do
 it 'creates instance of assignment' do
  assignment = Assignment.new
  expect(assignment).to be_an_instance_of(Assignment)
end
end

describe '.create' do
  it 'has an id' do
    assignment = Assignment.create
    expect(assignment.id).to_not be nil
    end
  end
end
