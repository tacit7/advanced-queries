class Role < ActiveRecord::Base
  has_many :people
  scope :billable, -> { where(billable: true)}
end
