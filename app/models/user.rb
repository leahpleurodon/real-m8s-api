class User < ApplicationRecord
    has_secure_password
    has_one :mate_profile
    validates_presence_of :password, :email, :username
    # validates_presence_of :mate_profile
    def full_name
        "#{first_name} #{last_name}"
    end
end
