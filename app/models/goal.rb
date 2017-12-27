class Goal < ApplicationRecord
  has_many :links, :dependent => :delete_all 
  belongs_to :user
end
