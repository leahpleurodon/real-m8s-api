class User < ApplicationRecord
    has_secure_password
    validates_presence_of :password, :email, :username
    def full_name
        "#{first_name} #{last_name}"
    end
end
