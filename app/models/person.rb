class Person < ActiveRecord::Base
  belongs_to :location
  belongs_to :role

  scope :billable, -> {
    joins(:role).merge(Role.billable)
  }
end
