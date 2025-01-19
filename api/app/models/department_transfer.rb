class DepartmentTransfer < ApplicationRecord
  belongs_to :employee
  belongs_to :department
  belongs_to :previous_department
end
