class Userfeedback < ApplicationRecord
  belongs_to :userfeedbacktable
  belongs_to :user
  belongs_to :obstacle
  belongs_to :goal
  belongs_to :weakness
end
