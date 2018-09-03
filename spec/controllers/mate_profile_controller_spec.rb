require 'rails_helper'

RSpec.describe MateProfilesController, type: :controller do
    let(:user) {
        User.create(
          first_name: "leah" ,
          last_name: "eramo" ,
          gender: "female",
          username: "leahpleurodon",
          dob: "13/03/1991",
          active: true,
          email: "boogers@email.com",
          password: "pudding"
        )
    }

  let(:valid_attributes) {
    {
        marital_status: "single",
        job: "Technical Consultant",
        user: user,
        is_smoker: false,
        faith: "jedi",
        personality: "quiet, non party animal"
    }
  }

  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # UsersController. Be sure to keep this updated too.
  let(:valid_session) { {} }
  
  describe "GET #show" do
    it "returns a success response" do
      mate_profile = MateProfile.create! valid_attributes
      get :show, params: {id: mate_profile.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end
  
  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {
          job: "Web Developer"
        }
      }
      
      it "updates the requested user" do
        mate_profile = MateProfile.create! valid_attributes
        put :update, params: {id: mate_profile.to_param, mate_profile: new_attributes}, session: valid_session
        mate_profile.reload
        expect(mate_profile.job).to eq('Web Developer')
      end
      
      it "renders a JSON response with the mate_profile" do
        mate_profile = MateProfile.create! valid_attributes
        put :update, params: {id: mate_profile.to_param, mate_profile: new_attributes}, session: valid_session
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq('application/json')
      end
    end
    
    context "with invalid params" do
      it "renders a JSON response with errors for the mate_profile" do
        mate_profile = MateProfile.create! valid_attributes
        put :update, params: {id: mate_profile.to_param, mate_profile: {user_id: nil}}, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end
  
end
