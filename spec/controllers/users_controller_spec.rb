require 'rails_helper'
RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/users/'
      expect(response).to have_http_status(:success)
    end

    it 'returns render index template' do
      get '/users/'
      expect(response).to render_template(:index)
    end

    it 'body includes correct placeholder text' do
      get '/users/'
      expect(response.body).to include('Users#index')
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get '/users/:id'
      expect(response).to have_http_status(:success)
    end

    it 'returns render show template' do
      get '/users/:id'
      expect(response).to render_template(:show)
    end

    it 'body includes correct placeholder text' do
      get '/users/:id'
      expect(response.body).to include('Users#show')
    end
  end
end
