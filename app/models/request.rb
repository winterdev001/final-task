class Request < ApplicationRecord
  belongs_to :worker
  belongs_to :company

  validates :content, presence: true 
end
