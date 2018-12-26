class Crypto < ApplicationRecord
  # sets up assosiation with user.rb
  belongs_to :user
end
