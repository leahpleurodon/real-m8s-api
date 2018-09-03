
RSpec.describe User, type: :model do
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
  describe "#full_name" do
    it 'returns a full name' do
      expect(user.full_name).to eq("leah eramo")
    end
  end
end
