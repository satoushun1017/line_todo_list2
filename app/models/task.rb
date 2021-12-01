class Task < ApplicationRecord
  validates :body, uniqueness: true
end
