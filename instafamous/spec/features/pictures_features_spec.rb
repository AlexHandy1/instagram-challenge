require 'rails_helper'

feature 'Pictures' do

  scenario 'show button on homepage to add a picture' do
    visit('/')
    expect(page).to have_content('No pictures in the network')
    expect(page).to have_button('Add Picture')
  end

  xscenario 'show all the pictures on homepage' do
    before do
      Picture.create(caption: 'Photo 1')
    end
    visit ('/')
    expect(page).to have_content('Photo 1')
  end

end