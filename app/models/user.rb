class User < ActiveRecord::Base
    has_secure_password
    has_many :characters

    validates :username, presence: true, uniqueness: true
    validates :password, length: {in: 7..12}
end
