require 'ffaker'

kzoo = Organization.create(
    name: "KZOO",
    togglit_id: "KZOO"
)

100.times do
  kzoo.employees << Employee.create(
    "first_name": FFaker::Name.first_name,
    "last_name": FFaker::Name.last_name,
    "title": FFaker::Job.title,
    "picture_url": FFaker::Avatar.image,
    "email": FFaker::Internet.email,
    "organization_id": 1
  ) end

kzoo.locations = Location.create([{
    "title": "Louisville Zoo",
    "description": "Front Gate",
    "target_page": "https://louisvillezoo.org/halloween/directions/",
    "latitude": 38.205949,
    "longitude": -85.707299,
    "organization_id": 1
                             },{
    "title": "Louisville Zoo",
    "description": "Meta Zoo: Education Center and Classrooms",
    "target_page": "https://louisvillezoo.org/education/",
    "latitude": 38.204349,
    "longitude": -85.705768,
    "organization_id": 1
                             },{
    "title": "Louisville Zoo",
    "description": "Gorilla Sanctuary",
    "target_page": "https://louisvillezoo.org/gorilla-forest/meet-the-gorillas/",
    "latitude": 38.207136,
    "longitude": -85.702011,
    "organization_id": 1
                                  },{
    "title": "Louisville Zoo",
    "description": "Elephant Zone",
    "target_page": "https://louisvillezoo.org/animalsandplants/asian-elephant/",
    "latitude": 38.205761,
    "longitude": -85.703195,
    "organization_id": 1
                                  },{
    "title": "Louisville Zoo",
    "description": "Monkey Island",
    "target_page": "https://louisvillezoo.org/kindi",
    "latitude": 38.206259,
    "longitude": -85.702659,
    "organization_id": 1
                                  },{
    "title": "Louisville Zoo",
    "description": "Glacier Run",
    "target_page": "https://louisvillezoo.org/glacier-run/",
    "latitude": 38.205877,
    "longitude": -85.701929,
    "organization_id": 1
                                  },{
    "title": "Louisville Zoo",
    "description": "Flamingo Yard",
    "target_page": "https://louisvillezoo.org/animalsandplants/chilean-flamingo/",
    "latitude": 38.205270,
    "longitude": -85.702358,
    "organization_id": 1
                                  },{
    "title": "Louisville Zoo",
    "description": "Maned Wolf",
    "target_page": "https://louisvillezoo.org/tag/maned-wolf/",
    "latitude": 38.205270,
    "longitude": -85.702659,
    "organization_id": 1
                                  },{
    "title": "Louisville Zoo",
    "description": "Island Exhibit",
    "target_page": "https://louisvillezoo.org/islands/",
    "latitude": 38.203845,
    "longitude": -85.703496,
    "organization_id": 1
                                  },{
    "title": "Louisville Zoo",
    "description": "Carousel",
    "target_page": "https://louisvillezoo.org/plan/rides-attractions/conservation-carousel/",
    "latitude": 38.205810,
    "longitude": -85.706371,
    "organization_id": 1
                                  }])

k911 = Organization.create(
    name: "K911",
    togglit_id: "K911"
)

100.times do
  k911.employees << Employee.create(
      "first_name": FFaker::Name.first_name,
      "last_name": FFaker::Name.last_name,
      "title": FFaker::Job.title,
      "picture_url": FFaker::Avatar.image,
      "email": FFaker::Internet.email,
      "organization_id": 1
  ) end

k911.locations = Location.create([{
    "title": "Prestonsburg Animal Shelter",
    "description": "Animal Shelter",
    "target_page": "http://www.animalshelter.org/",
    "latitude": 37.662088,
    "longitude": -82.795893,
    "organization_id": 2
                                  },{
    "title": "Johnson County Animal Shelter",
    "description": "Johnson County's only animal rescue.",
    "target_page": "http://www.wowanimalshelter.org/",
    "latitude": 37.786206,
    "longitude": -82.793494,
    "organization_id": 2
                                  },{
    "title": "Pike County Animal Shelter",
    "description": "Pike county’s animal rescue.",
    "target_page": "http://www.pikecountyanimalshelter.org/",
    "latitude": 37.501605,
    "longitude": -82.549748,
    "organization_id": 2
                                  },{
    "title": "Hermes Exotics Bengal Sanctuary",
    "description": "Rescue for rare cats.",
    "target_page": "http://tlgoggans.wixsite.com/hermes-exotics",
    "latitude": 37.829887,
    "longitude": -82.886598,
    "organization_id": 2
                                  },{
    "title": "Pike County Humane Society",
    "description": "Pike County’s Humane Society.",
    "target_page": "",
    "latitude": 37.474298,
    "longitude": -82.552234,
    "organization_id": 2
                                  },{
    "title": "Lawrence County Humane Society",
    "description": "Pike County’s Humane Society.",
    "target_page": "http://www.lawrencecokyanimalshelter.com/",
    "latitude": 38.114254,
    "longitude": -82.603212,
    "organization_id": 2
                                  }])

k911.save
kzoo.save