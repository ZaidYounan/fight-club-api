require 'rails_helper'

RSpec.describe "Fight", type: :model do
    it "expects valid Fight to have valid attributes" do
        fight = FactoryBot.create(:fight)
        expect(fight).to be_valid
    end
end