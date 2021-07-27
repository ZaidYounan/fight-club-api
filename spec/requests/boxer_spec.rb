require 'rails_helper'

describe "Boxer API", type: :request do
    describe "GET /boxer" do
        before do
            get "/boxers"
        end
        it 'returns success for boxers' do
            expect(response).to have_http_status(:success)
        end
    end

    describe "POST /boxers" do
        before do
            FactoryBot.create(:gym, name: "Test Gym", address: "123 Street")
        end
        it "returns created" do
            post "/boxers", params: { boxer: {first_name: "test", last_name: "name", height: 180, weight: 80, reach: 40, stance: "Southpaw", gym_id: 1}}
            expect(response).to have_http_status(:created)
        end
    end

    describe "DELETE /boxers/:id" do
        before do
            FactoryBot.create(:gym, name: "Test Gym", address: "123 Street")
            FactoryBot.create(:boxer, first_name: "test", last_name: "name", height: 180, weight: 80, reach: 40, stance: "Southpaw", gym_id: 1 )
        end
        it "deletes a boxer" do
            expect {
                delete "/boxers/#{boxer.id}"
            }.to change {Boxer.count}.from(1).to(0)
            expect(response).to have_http_status(:no_content)
        end
    end



    
end
