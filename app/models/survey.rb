class Survey < ApplicationRecord
  belongs_to :user
  belongs_to :company
  belongs_to :team
end
