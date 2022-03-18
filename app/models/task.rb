class Task < ApplicationRecord
  validates :title, presence: true
  validates :details, length: { minimum: 5 }
  validates :details, length: { maximum: 50 }

  # - [optional] rework #truncated_details so that it doesn’t add ‘...’ when shorter than 10 characters - update the test

  def truncated_details
    "#{details[0..15]}..."
  end
end
