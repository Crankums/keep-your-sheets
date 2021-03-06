class User < ActiveRecord::Base
    has_secure_password
    has_many :characters

    validates :username, presence: true, uniqueness: true
    validates :email, presence: true
    validates :password, length: {in: 7..12}, unless: ->(u){ u.password.blank? }
    validates :age, numericality: { only_integer: true }, allow_nil: true
    validates :city, format: { with: /\A[a-zA-Z]+\z/, message: "can only contain letters" }, allow_blank: true
    validates :state, format: { with: /\A[a-zA-Z]+\z/, message: "can only contain letters" }, length: {is: 2}, allow_blank: true
    validates :bio, length: {maximum: 500}, allow_blank: true

end
