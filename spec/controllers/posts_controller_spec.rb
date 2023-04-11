require 'rails_helper'

RSpec.describe PostsController, type: :request do
  describe 'Get id' do
    it 'returns a successful response' do
      get '/users/:id/posts/:id/'
      expect(response).to be_successful
    end

    it 'Creates index templates' do
      get users_path
      expect(response).to render_template(:index)
    end

    it 'creates template show' do
      get '/users/:id/posts/:id'
      expect(response).to render_template(:show)
    end

    it ' The response body contains accurate title.' do
      get '/users/:id/posts'
      expect(response.body).to include('Posts#index')
    end
  end
end