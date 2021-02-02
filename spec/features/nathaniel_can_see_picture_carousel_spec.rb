require 'rails_helper'

RSpec.feature "Nathaniel's home page shows his picture" do
  scenario "they can see love message with pic" do
    welcome_header = "Auntie J loves Nathaniel"
    nephew_name = "Nathaniel"
    artist_image_path = "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"

    visit '/'
    expect(page).to have_content "Auntie J <3s"

    click_on nephew_name
    expect(current_path).to eq('/nathaniel')
    expect(page).to have_content "Auntie J loves Nathaniel"
  end
end