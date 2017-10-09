rice("r010").
rice("r011").
rice("r022").
rice("r023").

location(bantung).
location(swangdandin).
location(warichaphum).
location(pangkome).
location(atlantis).
location(bangken).
location(chatuchak).
location(nonthaburi).
location(ratchada).

victim(rommadon_teedo).
victim(tanapon_meesat).
victim(akarachai_passavoranan).
victim(roiboon_chaiyachit).
victim(settapong).
victim(kamalanon).
victim(khanutchon).
victim(john_doe).
victim(jane_doe).

heir(john_doe, jane_doe).


food(canned_mackerel_in_tomatoes_sauce).
food(canned_mackerel_in_chili_sauce).
food(pasteurized_milk).
food(congee).
food(soup).

victim_has_crop_quantity(rommadon_teedo, 2000).
victim_has_crop_quantity(tanapon_meesat, 3000).
victim_has_crop_quantity(akarachai_passavoranan, 4532).
victim_has_crop_quantity(roiboon_chaiyachit, 5649).
victim_has_crop_quantity(settapong, 2351).
victim_has_crop_quantity(kamalanon, 4322).
victim_has_crop_quantity(khanutchon, 2415).
victim_has_crop_quantity(john_doe, 5121).
victim_has_crop_quantity(jane_doe, 0).

victim_has_cultivated_area(rommadon_teedo, 10).
victim_has_cultivated_area(tanapon_meesat, 43).
victim_has_cultivated_area(akarachai_passavoranan, 98).
victim_has_cultivated_area(roiboon_chaiyachit, 28).
victim_has_cultivated_area(settapong, 82).
victim_has_cultivated_area(kamalanon, 62).
victim_has_cultivated_area(khanutchon, 45).
victim_has_cultivated_area(john_doe, 63).
victim_has_cultivated_area(jane_doe, 72).

victim_plant_rice_type(rommadon_teedo, "r010").
victim_plant_rice_type(tanapon_meesat, "r011").
victim_plant_rice_type(akarachai_passavoranan, "r011").
victim_plant_rice_type(roiboon_chaiyachit, "r010").
victim_plant_rice_type(settapong, "r010").
victim_plant_rice_type(kamalanon, "r011").
victim_plant_rice_type(khanutchon, "r022").
victim_plant_rice_type(john_doe, "r023").
victim_plant_rice_type(jane_doe, "r011").

water_level_tolerance("r010",0.3).
water_level_tolerance("r011",0.8).
water_level_tolerance("r022",1.0).
water_level_tolerance("r023",1.5).

description("r010","Low water level tolerance").
description("r011","Middle water level tolerance").
description("r022","MId-High water level tolerance").
description("r023","High water level tolerance").


has_water_level(bantung, 0.4).
has_water_level(swangdandin, 0.34).
has_water_level(warichaphum, 1.1).
has_water_level(pangkome, 3.0).
has_water_level(bangken, 0.46).
has_water_level(atlantis, 1000).
has_water_level(chatuchak, 1.3).
has_water_level(nonthaburi, 0.34).
has_water_level(ratchada, 0.13).

victim_location(rommadon_teedo,bantung).
victim_location(tanapon_meesat,swangdandin).
victim_location(akarachai_passavaranan,warichaphum).
victim_location(roiboon_chaiyachit,pangkome).
victim_location(khanutchon, atlantis).
victim_location(kamalanon, ratchada).
victim_location(settapong, nonthaburi).
victim_location(john_doe, bangken).
victim_location(jane_doe, chatuchak).

birthdate(rommadon_teedo,01/01/2503).
birthdate(tanapon_meesat,11/07/2534).
birthdate(akarachai_passavoranan,02/11/2523).
birthdate(roiboon_chaiyachit,31/03/2559).
birthdate(khanutchon, 23/04/2000).
birthdate(kamalanon, 23/04/2000).
birthdate(settapong, 23/04/2000).
birthdate(john_doe, 23/04/2000).
birthdate(jane_doe, 23/04/2010).

birthyear(rommadon_teedo,2503).
birthyear(tanapon_meesat,2534).
birthyear(akarachai_passavoranan,2523).
birthyear(roiboon_chaiyachit,2559).
birthyear(khanutchon, 2000).
birthyear(kamalanon, 2000).
birthyear(settapong, 2000).
birthyear(john_doe, 2000).
birthyear(jane_doe, 2010).

health_condition(rommadon_teedo,sifiris).
health_condition(tanapon_meesat,none).
health_condition(akarachai_passavoranan,none).
health_condition(roiboon_chaiyachit,hiv).
health_condition(khanutchon, none).
health_condition(kamalanon, paralyze).
health_condition(settapong, none).
health_condition(john_doe, none).
health_condition(jane_doe, none).

food_health_condition(canned_mackerel_in_tomatoes_sauce,seafood).
food_health_condition(canned_mackerel_in_chili_sauce,seafood).
food_health_condition(pasteurized_milk,milk).
food_health_condition(congee,liquid).
food_health_condition(soup,liquid).

type(canned_mackerel_in_tomatoes_sauce,canned).
type(canned_mackerel_in_chili_sauce,canned).
type(pasteurized_milk,uht_milk).
type(congee,liquid).
type(soup,liquid).



flood(X) :- location(X) , has_water_level(X,Y) , Y>1.

sick(X) :- health_condition(X,Y) , not(Y=none).

age(X , Y) :- birthyear(X,Z),Y is 2560 - Z.

is_infant(X) :- age(X,Y) , Y < 2.

is_elder(X) :- age(X,Y) , Y > 60.

edible(X,Y) :- is_elder(X), food_health_condition(Y,liquid).

edible(X,Y) :- is_infant(X) , food_health_condition(Y,milk).

edible(X,Y) :- not(is_infant(X)),not(is_elder(X)) ,not(sick(X)) , food_health_condition(Y,A) , not(A=milk).

edible(X,Y) :- not(is_infant(X)) , sick(X) , food_health_condition(Y,A) , not(A=milk),not(A=seafood).

flood_duration(V,D) :- victim_location(V,L),has_water_level(L,H),D is round(6.94*sqrt(H)).

is_his_rice_die(V) :- victim_plant_rice_type(V,E),victim_location(V,A),water_level_tolerance(E,T),has_water_level(A,L),T<L.

help_rice(V,T,A) :- is_his_rice_die(V) ,victim_plant_rice_type(V,T),victim_has_crop_quantity(V,A).

help_food(V,T,A) :- flood_duration(V,D),edible(V,T), A is D * 3.

supply(V,R,A,F,M) :- help_rice(V,R,A) ;help_food(V,F,M).
