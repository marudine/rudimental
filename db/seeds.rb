# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cussword.destroy_all
Translation.destroy_all
cusswords_hash = []
strings = %w(aclit
 adick
 anal\ intruder
 anal\ invader
 analicker
 anus
 anal
 arrse
 arse
 ass
 ass\ bandit
 ass\ clown
 ass\ face
 ass\ fucker
 ass\ hole
 ass\ load
 ass\ munch
 ass\ out
 ass\ packer
 ass\ reamer
 ass\ whacker
 ass\ wipe
 ball\ breaker
 ball\ buster
 baller
 balling
 bat\ shit
 batshit
 beaver
 beener
 big\ baller
 bigballer
 bimbo
 bite\ me
 biteme
 blewinski
 blue\ ball
 blue\ balls
 blueball
 blueballs
 bullshit
 butt\ bandit
 butt\ buddy
 buttpirate
 camel\ toe
 cameltoe
 choad
 chode
 condom
 coochie
 cootch
 cooze
 corn\ hole
 cornhole
 crack\ spackler
 crap
 crap\ face
 crap\ head
 crapface
 craphead
 crapper
 cum\ bubble
 cum\ stain
 cuze
 daisy\ chain
 dangelberry
 dangleberry
 deez\ nuts
 devil
 dick\ nose
 dick\ wad
 dick\ weed
 dicknose
 dickwad
 dickweed
 dildo
 dingleberry
 dipstick
 douche
 douche\ bag
 eggplant
 ejaculator
 finger\ bang
 finger\ banged
 finger\ banger
 finger\ fuck
 fingerbang
 fingerbanged
 fingerbanger
 fingerfuck
 fore\ skin
 foreskin
 fuck
 fuck\ face
 fucked
 fucker
 fuckers
 fuckface
 fucking
 fucknut
 fucknuts
 fucks
 fuckshit
 fuckstick
 fuk
 fuker
 fukkhead
 fur\ burger
 furburger
 furry\ burger
 fvck
 fvcker
 fvckface
 fvcking
 fvcknut
 fvcknuts
 hairy\ hatchet\ wound
 hairy\ taco
 hairytaco
 hell
 hoochie\ mama
 horse\ shit
 horseshit
 hot-beef\ injection
 koochie
 koochy
 kootch
 lettuce\ picker
 lettucepicker
 licknipple
 limpdick
 love\ canal
 mangina
 mother\ fucker
 motherfucker
 nip
 nipple
 nutted
 nutter
 nutting
 one\ way\ pipe
 panocha
 pecker
 pecker\ head
 pecker\ nose
 peckerhead
 peckernose
 penisbreath
 phelch
 phelcher
 pheltch
 pheltcher
 pinis\ wrinkle
 piniswrinkle
 pipe\ hitter
 pipehitter
 piss
 pissdrinker
 pito
 pole\ sitter
 pole\ smoker
 polock
 poontang
 poop\ chute
 poop\ stain
 poopchute
 poopstain
 popped\ cherry
 poppedcherry
 puta
 rectum
 rim\ job
 rimjob
 satan
 schlong
 shit
 shits
 shit\ eater
 shit\ face
 shit\ faced
 shit\ head
 shit\ kicker
 shit\ pusher
 shit\ shover
 shiteater
 shitface
 shitfaced
 shitfucker
 shithead
 shitkicker
 shitpusher
 shitshover
 skank
 smegma
 snog
 sphincter\ boy
 sphincter\ face
 sphincterboy
 sphincterface
 testes
 testicles
 testicular\ polisher
 titty
 titty\ twisted
 twat)
cusswords_hash = strings.map do |w|
threes = ['anal', 'shit', 'fuck', 'anus', 'fuk']
twos = ['testciles', 'sphincter', 'poop', 'ass', 'dick']
  if threes.any? {|x| w.include?(x)}
    r = 3
  elsif threes.none? {|x| w.include?(x)}
    r = 2
  else
    r = 1
  end

{word: w, rating: r}

end

words = Cussword.create(cusswords_hash)
p "Created #{Cussword.count} words"

# Seeding doesn't work with foreign key(cussword_id) values,
# # those values were added manually to db
translation_list = [{hun_word: "fasz", french_word: "putain"},
  {hun_word: "szar", french_word: "merde"},
  {hun_word: "csöcs", french_word: "téton"},
  {hun_word: "segg", french_word: "cul"},
  {hun_word: "faszfej", french_word:"connard"}]
Translation.create(translation_list)

# word_a = Cussword.find_by id: 94
# word_a.create_translation(hun_word: "fasz", french_word: "putain")
# word_b = Cussword.find_by id: 179
# word_b.create_translation!(hun_word: "szar", french_word: "merde")
# word_c = Cussword.find_by id: 206
# word_c.create_translation!(hun_word: "csöcs", french_word: "téton")
# word_d = Cussword.find_by id: 10
# word_d.create_translation!(hun_word: "segg", french_word: "cul")
# word_e = Cussword.find_by id: 108
# word_e.create_translation!(hun_word: "faszfej", french_word:"connard")
