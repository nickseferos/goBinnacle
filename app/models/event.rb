class Event < ActiveRecord::Base
  validates :name, presence: true
  validates :date, presence: true
  validates :start, presence: true
  validates :location, presence: true
end