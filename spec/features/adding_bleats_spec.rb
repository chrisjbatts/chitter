require 'spec_helper'

feature "Adding new bleats" do
  scenario "when browsing the homepage" do
    expect(Bleat.count).to eq(0)
    visit '/'
    add_bleat("testing 123")
    expect(Bleat.count).to eq(1)
    bleat = Bleat.first
    expect(bleat.content).to eq("testing 123")
  end

  def add_bleat(content)
    within('#new-bleat') do
      fill_in 'content', :with => content
      click_button 'Add bleat'
    end
  end
end