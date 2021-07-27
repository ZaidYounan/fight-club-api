require 'rails_helper'

RSpec.describe "Boxer", type: :request do
    describe "GET /boxer" do
        it "returns success" do
            get "/boxers"
            expect(response).to have_http_status(:success)
        end
    end

    describe "POST /boxers" do
        it "returns created" do
            gym = FactoryBot.create(:gym)
            post "/boxers", params: {
                boxer: {
                    first_name: "test",
                    last_name: "name",
                    height: 180,
                    weight: 80,
                    reach: 40,
                    stance: "Southpaw",
                    gym_id: gym.id
                    }
            }
            expect(response).to have_http_status(:created)
        end
    end

    describe "DELETE /boxers/:id" do
        it "deletes a boxer" do
            boxer = FactoryBot.create(:boxer)
            expect {
                delete "/boxers/#{boxer.id}"
            }.to change {Boxer.count}.from(1).to(0)
            expect(response).to have_http_status(:no_content)
        end
    end
   
end

