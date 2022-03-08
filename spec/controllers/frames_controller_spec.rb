require 'rails_helper'


RSpec.describe "/frames", type: :request do
  
  before do
    get '/frames'
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

end