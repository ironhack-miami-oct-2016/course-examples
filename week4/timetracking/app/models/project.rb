class Project < ApplicationRecord
  has_many :time_entries
    # project_id of the TimeEntry model
end
