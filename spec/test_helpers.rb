require 'faker'
require 'factory_bot_rails'

module TestHelpers

    def testUser
        FactoryBot.create(:user,
            email: "test@nomail.com"
            password: "test123"
        )
    end