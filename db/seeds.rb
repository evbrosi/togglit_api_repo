require 'ffaker'

organization = Organization.create(
                               name: "TEKY",
                               togglit_id: "TEKY"
)

employees = Employee.create(
                       first_name: FFaker::Name.first_name,
                       last_name: FFaker::Name.last_name,
                       title: FFaker::Job.title,
                       email: FFaker::Internet.email,
                       organization_id: 1
)

location = Location.create(
                        title: "Paintsville",
                        description: "Where the monkey's at!"
)

organization.save