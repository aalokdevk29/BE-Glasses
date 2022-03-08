require 'rails_helper'


RSpec.describe "/glasses", type: :request do
  
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
    @frame = Frame.new(
      {
        name: 'Rimless',
        description: "testing frist",
        status: 1,
        stock: 10,
        price: 1000
      }
    )
    @frame.save
    @lense = Lense.new(
      {
        colour: 'black',
        description: "testing frist",
        prescription_type: 0,
        lens_type: 0,
        stock: 12,
        price: 1000
      }
    )
    @lense.save
    post '/glasses', params: { 
                    frame_id: @lense.id.to_s,
                    lense_id: @frame.id.to_s
                  }, as: :json, headers: {Authorization: JsonWebToken.encode(user_id: @user.id)}
  end
  
  it 'returns a created status' do
    expect(response.status).to eq(200)
  end

end