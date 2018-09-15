class Person < ActiveRecord::Base
  belongs_to :location
  belongs_to :role

  belongs_to :manager, class_name: "Person", foreign_key: :manager_id, optional: true
  has_many :employees, class_name: "Person", foreign_key: :manager_id

  scope :billable, -> {
    joins(:role).merge(Role.billable)
  }
end
