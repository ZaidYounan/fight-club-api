require 'rails_helper'

RSpec.describe "User", type: :model do
    it "expects valid User to have valid attributes" do
      expect(User.new).to be_valid
    end
end