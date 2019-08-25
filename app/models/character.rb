class Character < ActiveRecord::Base
    belongs_to :users
    has_one :stats
    
    validates :campaign, allow_blank: true, format: { with: /[a-z0-9 '.,]+/i, message: "can't contain other characters"}
    validates :char_name, :race, :char_class, presence: true
    validates :char_name, :race, :char_class, format: { with: /\A[a-zA-Z]+\z/, message: "can't contain other characters"}
end