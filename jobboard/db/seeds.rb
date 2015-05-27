# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

target1 = Target.create(label: '1ère année')
target2 = Target.create(label: '2ème année')
target3 = Target.create(label: '3ème année')
targetAlternance = Target.create(label: 'Alternance')

Company.create(name: 'Euro Information', mail: 'test@e-i.fr', phone: '15 97 53 64 28',
address: 'Strasbourg', description: 'Bank Bank !')

Company.create(name: 'IBM', mail: 'test@ibm.com', phone: '01 23 45 67 89',
address: 'Hakuna ma ta ta', description: 'Ibm lolollololo !')

Company.create(name: 'Bosch', mail: 'boboche@hotmail.de', phone: '03 14 15 92 65',
address: 'Die StraSSe', description: 'Ustensiles et outils, fouets')

Company.create(name: 'La pomme', mail: 'ripsteeve@pomme.com', phone: '00 00 00 00 01',
address: '404 not found', description: 'Vendeur de pommes fashion')

Company.create(name: 'GoooGle', mail: 'no-reply@google.com', phone: '48 15 16 23 42',
address: 'La vallée de la silice', description: 'Chez Sergueï et Larry !')

userr = User.create!(surname: 'De la Grandière', first_name: 'Richard',
 promo: 0, company_id: 1, created_at: DateTime.new(2009,9,14,8),role: 'admin',
updated_at: DateTime.new(2009,9,14,8), email: 'richard.delagrandiere@e-i.fr', password: 'plopplop',password_confirmation: 'plopplop', sign_in_count: 0)
#Application:create(user_id)

userr.skip_confirmation!
userr.save!

userr = User.create!(surname: 'Bob', first_name: 'Sponge',
promo: 2017, created_at: DateTime.now,role: 'not_validated',
 updated_at: DateTime.now, email: 'sponge.bob@bikini.bot', password: 'patrick/pimp',password_confirmation: 'patrick/pimp', sign_in_count: 0)
#Application:create(user_id)


userr = User.create!(surname: 'Arnold', first_name: 'Schwarzenegger',
promo: 2017, created_at: DateTime.now,role: 'not_validated',
 updated_at: DateTime.now, email: 'terminator@skynet.com', password: 'connors1234',password_confirmation: 'connors1234', sign_in_count: 0)
#Application:create(user_id)


userr = User.create!(surname: 'Jon', first_name: 'Snow',
promo: 2017, created_at: DateTime.now,role: 'not_validated',
 updated_at: DateTime.now, email: 'winter@is.coming', password: 'thewallkeepus',password_confirmation: 'thewallkeepus', sign_in_count: 0)
#Application:create(user_id)

userr.skip_confirmation!
userr.save!

User.create(surname: 'De la Grandière', first_name: 'Marie-Perrine',
  promo: 1989, company_id: 1, created_at: DateTime.new(20010,9,14,8),
 updated_at: DateTime.new(2009,9,14,8), email: 'plop@ccc.com', password: 'plop!plop',
 password_confirmation: 'plop!plop', sign_in_count: 0)



Offer.create(company_id: 1, user_id: 2, title: 'Offre Crédit galactique - voyage galactée',
target_id: target1.id, description:'Gérez les placements de nos clients sur des planètes étrangères à notre système. Curieux et motivé, vous serez amené à gérez un grand nombre de clients à travers la galaxie.
Permis X-wing requis, Mention hyper-espace appréciée.',
duration: '12', creation_date: DateTime.new(2009,9,14,8), start_date: DateTime.new(2009,9,14,8),
expiration_date: DateTime.new(2009,10,14,8), contact: 'richard.delagrandiere@e-i.fr', active: true, published: true)

Offer.create(company_id: 3, user_id: 2, title: 'Barman de compagnie',
target_id: target2.id, description:'Grand buveur, vous savez servir le champagne comme un champion. Toujours motivé,
vous êtes impertuble. La connaissance parfaite du grimoire des cocktails est obligatoire.',
duration: '5', creation_date: DateTime.new(2013,4,4,8), start_date: DateTime.new(2009,9,14,8),
expiration_date: DateTime.new(2015,5,28,5), contact: 'richard.delagrandiere@e-i.fr', active: true, published: true)

Offer.create(company_id: 4, user_id: 2, title: 'Le majordome du manoir',
target_id: target2.id, description:'Fin gourmet, vous êtes portier de formation. Vous connaissez les recoins
de tous les musées que vous visitez. Le nettoyage de cave secrète ne vous pose pas de soucis.
La fine moustache est un plus.',
duration: '5', creation_date: DateTime.new(2013,4,4,8), start_date: DateTime.new(2009,9,14,8),
expiration_date: DateTime.new(2015,5,28,5), contact: 'richard.delagrandiere@e-i.fr', active: true, published: true)

Offer.create(company_id: 4, user_id: 2, title: 'Sosie',
target_id: target2.id, description:'Vous me ressemblez ? Vous aimez les maths ? Venez donc me remplacer pendant les
pendant les partiels ! Rémunération en fonction du profil physique.',
duration: '5', creation_date: DateTime.new(2013,4,4,8), start_date: DateTime.new(2009,9,14,8),
expiration_date: DateTime.new(2015,5,28,5), contact: 'richard.delagrandiere@e-i.fr', active: true, published: false)

Application.create(user_id: 2, offer_id: 1,
time: DateTime.new(2009,9,14,8))
