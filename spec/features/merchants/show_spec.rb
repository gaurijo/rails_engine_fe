require 'rails_helper'

RSpec.describe "Merchant Show" do 
  it "returns a specific merchant's page", :vcr do 

    merchant = Merchant.new(
                            {id: 1, 
                            attributes: 
                            {name: 'Bob'}
                            }
                          )
    visit "/merchants/#{merchant.id}"
  
    expect(merchant).to be_a(Merchant)
    expect(merchant.id).to eq(1)
    expect(merchant.name).to eq("Bob")
  end
end