class Employeenote < ApplicationRecord
  belongs_to :employeelist
  belongs_to :user
end
