class Teamfeedback < ApplicationRecord
  belongs_to :teamfeedbacktable
  belongs_to :user
end
