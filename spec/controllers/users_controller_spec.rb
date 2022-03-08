require 'rails_helper'

RSpec.describe "/users", type: :request do

  let(:valid_attributes) {
    { 
      username: "testing user",
      email: "testing@gmail.com",
      password: "password123",
      password_confirmation: "password123"
    }
  }

  let(:invalid_attributes) {
    { 
      username: "testing user",
      password: "password123",
      password_confirmation: "password123"
    }
  }

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new User" do
        expect {
          post '/users', params: valid_attributes
        }.to change(User, :count).by(1)
      end
    end

    context "with invalid parameters" do
      it "does not create a new User" do
        expect {
          post '/users', params: invalid_attributes
        }.to change(User, :count).by(0)
      end
    end
  end
end
