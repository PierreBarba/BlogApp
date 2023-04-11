require 'rails_helper'

RSpec.describe UsersController, type: :request do
  describe 'Get id' do
    it 'returns a successful response' do
      get users_path
      expect(response).to be_successful
    end

    it 'creates template index' do
      get users_path
      expect(response).to render_template(:index)
    end

    it 'create template show' do
      get '/users/:id'
      expect(response).to render_template(:show)
    end

    it 'The response body contains accurate title.' do
      get '/users/'
      expect(response.body).to include('Users#index')
    end
  end
end