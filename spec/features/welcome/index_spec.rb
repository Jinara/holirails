require 'rails_helper'

RSpec.describe "index", :type => :feature do
  it "Should render a text: Hello World!" do
    visit welcome_index_path
    expect(page).to have_text("Hello World!")
  end
end
