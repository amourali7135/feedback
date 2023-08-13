class Companyfeedback < ApplicationRecord
  belongs_to :companyfeedbacktable
  belongs_to :user
end
