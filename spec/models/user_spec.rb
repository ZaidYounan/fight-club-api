require 'rails_helper'

RSpec.describe "User", type: :model do
    it "expects valid User to have valid attributes" do
      user = FactoryBot.create(:user)
      expect(user).to be_valid
    end
end