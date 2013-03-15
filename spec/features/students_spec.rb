require 'spec_helper'

describe 'students' do

  describe 'GET /student/new' do
    it 'displays the new student form', :js => true do
      visit root_path
      click_link('Students')
      page.should have_link('New')
      click_link('New')
      page.should have_button('Save')
    end
  end

    describe 'JS cancel_form()' do
    it 'remove the new student form', :js => true do
      visit root_path
      click_link('Students')
      page.should have_link('New')
      click_link('New')
      click_link('Cancel')
      page.should_not have_button('Save')
    end
  end

  describe 'POST /students', :js => true do
    it 'should create a new student' do
      visit root_path
      click_link('Students')
      click_link('New')
      fill_in('student_name', :with => 'norm')
      click_button('Save')
      page.should have_text('norm')
    end
    end
end