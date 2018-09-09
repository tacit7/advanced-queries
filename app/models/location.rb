class Location < ActiveRecord::Base
  has_many :people

  scope :billable, -> {
    joins(people: :role)
    .where(roles: { billable: true })
    .distinct
  }


  scope :by_region_and_location_name, -> {
    joins(:region)
    .merge(Region.order(:name))
    .order(:name)
  }
end
