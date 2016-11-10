class Project < ApplicationRecord
  has_many :time_entries
    # project_id of the TimeEntry model

  validates :name, { presence: true, uniqueness: true }
  validates :name, { length: { maximum: 30 } }
  validates :name, { format: /\A[a-zA-Z0-9 .']+\z/ }
end
