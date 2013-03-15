require 'spec_helper'

describe 'assignments' do

  describe 'GET /assignment/new' do
    it 'displays the new assignment form', :js => true do
      visit root_path
      click_link('Assignments')
      page.should have_link('New')
      click_link('New')
      page.should have_button('Save')
    end
  end

  describe 'JS cancel_form()' do
    it 'remove the new assignment form', :js => true do
      visit root_path
      click_link('Assignments')
      page.should have_link('New')
      click_link('New')
      click_link('Cancel')
      page.should_not have_button('Save')
    end
  end


  describe 'POST /assignments', :js => true do
    it 'should create a new assignment' do
      visit root_path
      click_link('Assignments')
      click_link('New')
      fill_in('assignment_name', :with => 'ruby')
      fill_in('assignment_group_size', :with => '2')
      click_button('Save')
      page.should have_text('ruby')
      page.should have_text('2')
    end
end

  describe 'SHOW /assignments/id', :js => true do
    it 'should show individual assignments' do
      visit root_path
      click_link('Assignments')
      click_link('New')
      fill_in('assignment_name', :with => 'ruby')
      fill_in('assignment_group_size', :with => '2')
      click_button('Save')
      page.should have_text('ruby')
      page.should have_text('2')
      click_link('ruby')
      page.should have_text('ruby')
    end
end
end
