require 'rails_helper'

RSpec.describe "Boxer", type: :model do
    before do
        FactoryBot.create(:gym)
    end
    it "expects valid Boxer to have valid attributes" do
        boxer = FactoryBot.create(:boxer)
        expect(boxer).to be_valid
    end
end