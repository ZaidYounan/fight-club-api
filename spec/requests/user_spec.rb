require 'rails_helper'

RSpec.describe 'Users', type: :request do
    describe "POST /users" do
        subject {post '/users/sign_in'}
        it 'returns success' do
            subject
            expect(response).to have_http_status(200)
        end
    end
end
