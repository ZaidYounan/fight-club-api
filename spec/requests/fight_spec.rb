require 'rails_helper'

describe "Fight API", type: :request do

    describe "GET /fights" do
        before do
            get "/fights"
        end
        it 'returns success for fights' do
            expect(response).to have_http_status(:success)
        end
    end

    # describe "POST /fights" do
    #     before do
    #         FactoryBot.create(:gym)
    #         FactoryBot.create(:boxer)
    #     end
    #     it "returns created" do
    #         testfight = FactoryBot.build(:fight)
    #         post "/fights", params: {
    #             fight: {
    #                 boxer_a_id: testfight.boxer_a_id,
    #                 boxer_b_id: testfight.boxer_b_id,
    #                 time_scheduled: testfight.time_scheduled, 
    #                 rounds: testfight.rounds,
    #                 round_time: testfight.round_time,
    #                 winner_id: testfight.winner_id,
    #                 loser_id: testfight.loser_id,
    #                 result: "result",
    #                 gym_id: testfight.gym_id
    #             }
    #         }
    #         expect(response).to have_http_status(:created)
    #     end
    # end

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

