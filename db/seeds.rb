# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Child.destroy.all
# Agency.destroy.all

kids_corner = Agency.find_or_create_by({ name:'Kids Corner', email:'kidscorner@gmail.com', city:'Atlanta', state:'GA'})
lost_kids = Agency.find_or_create_by({ name:'Lost Kids', email:'LostKids@gmail.com', city:'Atlanta', state:'GA'})

chilren_at_kids_corner = [
  {
    first_name: 'Nicole',
    last_name: 'Britt',
    age:12,
    sex:'female',
    bio:'I like candy'
  },
  {
    first_name: 'Emily',
    last_name: 'Yeager',
    age:12,
    sex:'female',
    bio:'Im  very good sometimes'
  }]
  
  chilren_at_kids_corner.each do |child|
  kids_corner.children.create(child)
end

chilren_at_lost_kids = [
  {
    first_name: 'Sarah',
    last_name: 'Smith',
    age:12,
    sex:'female',
    bio:'I like candy'
  },
  {
    first_name: 'Sue',
    last_name: 'Smith',
    age:12,
    sex:'female',
    bio:'Im  very good sometimes'
  }]

  chilren_at_lost_kids.each do |child|
  lost_kids.children.create(child)
end