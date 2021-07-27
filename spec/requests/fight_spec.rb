require 'rails_helper'

RSpec.describe "Fight", type: :request do

    describe "GET /fights" do
        before do
            get "/fights"
        end
        it 'returns success for fights' do
            expect(response).to have_http_status(:success)
        end
    end

    describe "POST /fights" do
        it "returns created" do
            gym = FactoryBot.create(:gym)
            boxerA = FactoryBot.create(:boxer)
            boxerB = FactoryBot.create(:boxer)
            testfight = FactoryBot.build(:fight)
            post "/fights", params: {
                fight: {
                    boxer_a_id: boxerA.id,
                    boxer_b_id: boxerB.id,
                    time_scheduled: testfight.time_scheduled, 
                    rounds: testfight.rounds,
                    round_time: testfight.round_time,
                    winner_id: boxerA.id,
                    loser_id: boxerB.id,
                    result: "result",
                    gym_id: gym.id
                }
            }
            expect(response).to have_http_status(:created)
        end
    end

    describe "DELETE /fights/:id" do
        it "deletes a fight" do
            fight = FactoryBot.create(:fight)
            expect {
                delete "/fights/#{fight.id}"
            }.to change {Fight.count}.from(1).to(0)
            expect(response).to have_http_status(:no_content)
        end
    end



    
end

