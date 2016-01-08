# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Doctor.create([
                  {
                    first_name: 'Samuel',
                    last_name: 'Tarlswell',
                    address: '23423 Apple Drive',
                    city: 'San Antonio',
                    state: 'TX',
                    zip: '32342',
                    school: 'University of Texas',
                    years_in_practice: '25'
                  },
                  {
                      first_name: 'Susan',
                      last_name: 'Lee',
                      address: '2342 Georgia Lane',
                      city: 'Dallas ',
                      state: 'TX',
                      zip: '23423',
                      school: 'Berkeley University',
                      years_in_practice: '17'
                  },
                  {
                      first_name: 'Bob',
                      last_name: 'Jones',
                      address: '2342 Bark Drive',
                      city: 'Austin',
                      state: 'TX',
                      zip: '23423',
                      school: 'University of Phoenix Online',
                      years_in_practice: '5'
                  }
              ])


    # first_name: '',
    # last_name: '',
    # address: '',
    # city: '',
    # state: '',
    # zip: '',
    # school: '',
    # years_in_practice: ''