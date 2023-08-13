class Managementfeedback < ApplicationRecord
  belongs_to :managementfeedbacktable
  belongs_to :user
end
