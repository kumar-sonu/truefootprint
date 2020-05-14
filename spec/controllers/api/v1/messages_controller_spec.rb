require 'rails_helper'

RSpec.describe Api::V1::MessagesController do
  describe 'GET #index' do
    let!(:message) { FactoryBot.create(:message) }
    before do
      get :index
    end
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end
    it 'JSON body response contains expected message attributes' do
      json_response = JSON.parse(response.body)
      expect(json_response['results'].first.keys).to(
        match_array(%w[id body sender posted_at])
      )
    end
  end

  describe 'POST #create' do
    context 'send post request' do
      let(:params) {
        {
          body: 'This is a test post',
          sender: 'Robert',
          posted_at: Time.now
        }
      }
      before do
        post :create, params: params
      end
      it { expect(Message.count).to eq(1) }
      it { expect(Message.first.body).to eq('This is a test post') }
      it { expect(Message.first.sender).to eq('Robert') }
      it { expect(response).to have_http_status(:success) }
    end
  end
end
