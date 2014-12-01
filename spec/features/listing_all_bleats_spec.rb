require 'spec_helper'

feature 'user is able to browse the list of bleats' do

  before(:each) {
    Bleat.create(:content => "blah blah blah")
  }

  scenario "when opening the homepage" do
    visit '/'
    expect(page).to have_content("blah blah blah")
  end
  
end