require 'rails_helper'

RSpec.describe 'DeviseTokenAuth', type: :request do
  let(:login) {create(:login)}

  before do
    host! 'api.autofix.local'
    token_sign_in(login)
    @request.headers['Content-Type'] = 'application/vnd.api+json'
    @request.headers['Accept'] = 'application/vnd.api+json'
  end
  
  context 'Testing API' do
    let(:user_params){attributes_for(:user)}
    before do
      post '/auth' , params: user_params, format: :json
    end

    describe "should render :create template" do
      it 'returns successful 201 response' do
        expect(response).to have_http_status(201)
        expect(response.content_type).to eq('application/vnd.api+json')
      end
    end
  end
end

