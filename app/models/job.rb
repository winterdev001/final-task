class Job < ApplicationRecord
  belongs_to :company

  validates :title, presence: true 
  validates :amount, presence: true ,numericality: { only_integer: true, greater_than: 1 }
    
  validates :job_type, presence: true 
  validates :location, presence: true 
  validates :remote, presence: true 
  validates :description, presence: true 
end
