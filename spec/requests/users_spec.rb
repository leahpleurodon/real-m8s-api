require 'rails_helper'

RSpec.describe "Users", type: :request do
  let(:user_params){
    {
      first_name: "leah" ,
      last_name: "eramo" ,
      gender: "female",
      username: "leahpleurodon",
      dob: "13/03/1991",
      active: true,
      email: "boogers@email.com",
      password: "pudding"
    }
  }
  describe "GET /users" do
    it "works!" do
      get users_path
      expect(response).to have_http_status(200)
    end
  end
  describe "POST /users" do
    it "creates a user" do
      post "/users", :params => { :user => user_params }
  
      expect(response.content_type).to eq("application/json")
      expect(response).to have_http_status(:created)
    end
  end
end
