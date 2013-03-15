require 'spec_helper'

describe 'home' do

  describe '/' do
    it 'displays students and assignments links' do
      visit root_path
      page.should have_link('Students')
      page.should have_link('Assignments')

    end
  end
end
