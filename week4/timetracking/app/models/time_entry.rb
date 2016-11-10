class TimeEntry < ApplicationRecord
  belongs_to :project
    # project_id
    # id of the Project model

  validates :hours, { numericality: true }
  validates :minutes, { numericality: true }
  validates :date, { presence: true }
end
