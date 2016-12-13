require 'spec_helper'


feature 'Visitor sees homepage' do
  scenario 'with welcome text' do
    visit root_path

    expect(page).to have_title 'Poc'
  end
end