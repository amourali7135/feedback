class Userobstacle < ApplicationRecord
  belongs_to :userobstaclelist
  belongs_to :user
end
