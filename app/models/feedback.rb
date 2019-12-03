class Feedback < ApplicationRecord
  belongs_to :request

  validates :response, presence: true 

end
