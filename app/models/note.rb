class Note < ApplicationRecord
  belongs_to :contact

  validates :body, presence: true
  validates :body, length: { maximum: 500 }
end
