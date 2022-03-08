require 'rails_helper'


RSpec.describe "/lenses", type: :request do
  
  before do
    @user = User.new(
      { 
        username: "testing user",
        email: "testing@gmail.com",
        password: "password123",
        password_confirmation: "password123"
      }
    )
    @user.save
    get '/lenses', as: :json, headers: {Authorization: JsonWebToken.encode(user_id: @user.id)}
  end  

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

end
