class Job < ApplicationRecord
  validates_presence_of :user_id
  validates_presence_of :category_id
  validates_presence_of :location
  validates_presence_of :status_id

  belongs_to :user
  belongs_to :category
  belongs_to :status

end
