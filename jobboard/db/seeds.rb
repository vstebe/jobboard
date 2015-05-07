# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Company.create(name: 'Euro Information', mail: 'test@e-i.fr', phone: '01 23 45 67 89',
address: 'Strasbourg', description: 'Filiale Crédit Mutuel !')

User.create!(user_type: 'admin', surname: 'De la Grandière', first_name: 'Richard',
 mail: 'richard.delagrandiere@e-i.fr', promo: 0, company_id: 1, created_at: DateTime.new(2009,9,14,8),
 updated_at: DateTime.new(2009,9,14,8), email: 'plop@bbb.com', password: 'plopplop',password_confirmation: 'plopplop', sign_in_count: 0)
#Application:create(user_id)


User.create(user_type: 'étudiant', surname: 'De la Grandière', first_name: 'Marie-Perrine',
 mail: 'marie-perrine.delagrandiere@e-i.fr', promo: 1989, company_id: 1, created_at: DateTime.new(20010,9,14,8),
 updated_at: DateTime.new(2009,9,14,8), email: 'plop@ccc.com', password: 'plop!plop',
 password_confirmation: 'plop!plop', sign_in_count: 0)

Offer.create(company_id: 1, user_id: 2, title: 'Offre Crédit galactique - voyage galactée',
target: '1ère année', description:'Gérez les placements de nos clients sur des planètes étrangères à notre système. Curieux et motivé, vous serez amenez à gérez un grand nombre de clients à travers la galaxie.
Permis X-wing requis, Mention hyper-espace appréciée',
duration: '12', creation_date: DateTime.new(2009,9,14,8), start_date: DateTime.new(2009,9,14,8),
expiration_date: DateTime.new(2009,9,14,8), contact: 'richard.delagrandiere@e-i.fr', active: true)

Application.create(user_id: 2, offer_id: 1,
time: DateTime.new(2009,9,14,8))
