# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

company = Company.create(name: 'Euro Information', mail: 'test@e-i.fr', phone: '01 23 45 67 89', address: 'Strasbourg', description: 'Filiale Crédit Mutuel !')
user =User.create!(user_type: 'admin', surname: 'De la Grandière', first_name: 'Richard',
 mail: 'richard.delagrandiere@e-i.fr', promo: 0, company_id: 1, created_at: DateTime.new(2009,9,14,8),
 updated_at: DateTime.new(2009,9,14,8), email: 'plop@bbb.com', password: 'plopplop',password_confirmation: 'plopplop', sign_in_count: 0)
#Application:create(user_id)
