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

vehicle(4-wheel).
vehicle(boat).
vehicle(jet_ski).
vehicle(helicopter).

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

career(rommadon_teedo,farmer).
career(tanapon_meesat,farmer).
career(akarachai_passavoranan,farmer).
career(roiboon_chaiyachit,butcher).

food(canned_mackerel_in_tomatoes_sauce).
food(canned_mackerel_in_chili_sauce).
food(pasteurized_milk).


victim_has_crop_quantity(rommadon_teedo, 2000).
victim_has_crop_quantity(tanapon_meesat, 3000).
victim_has_crop_quantity(akarachai_passavoranan, 4532).
victim_has_crop_quantity(roiboon_chaiyachit, 5649).
victim_has_crop_quantity(settapong, 2351).
victim_has_crop_quantity(kamalanon, 4322).
victim_has_crop_quantity(khanutchon, 2415).
victim_has_crop_quantity(john_doe, 5121).
victim_has_crop_quantity(jane_doe, 0).

victim_has_cultivated_area(rommadon_teedo, 5342).
victim_has_cultivated_area(tanapon_meesat, 4359).
victim_has_cultivated_area(akarachai_passavoranan, 4398).
victim_has_cultivated_area(roiboon_chaiyachit, 3282).
victim_has_cultivated_area(settapong, 4382).
victim_has_cultivated_area(kamalanon, 6282).
victim_has_cultivated_area(khanutchon, 4582).
victim_has_cultivated_area(john_doe, 6382).
victim_has_cultivated_area(jane_doe, 7282).

victim_plant_rice_type(rommadon_teedo, "r010").
victim_plant_rice_type(tanapon_meesat, "r011").
victim_plant_rice_type(akarachai_passavoranan, "r022").
victim_plant_rice_type(roiboon_chaiyachit, "r010").
victim_plant_rice_type(settapong, "r010").
victim_plant_rice_type(kamalanon, "r011").
victim_plant_rice_type(khanutchon, "r022").
victim_plant_rice_type(john_doe, "r023").
victim_plant_rice_type(jane_doe, "r011").



quantity_rice("r010",503).
quantity_rice("r011",403).
quantity_rice("r022",245).
quantity_rice("r023",212).

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
has_water_level(warichaphum, 1.0).
has_water_level(pangkome, 3.0).
has_water_level(bangken, 0.46).
has_water_level(atlantis, 1000).
has_water_level(chatuchak, 1.3).
has_water_level(nonthaburi, 0.34).
has_water_level(ratchada, 0.13).



has_fuel_consumption_rate(4-wheel, 24).
has_fuel_consumption_rate(boat, 54).
has_fuel_consumption_rate(jey_ski, 34).
has_fuel_consumption_rate(helicopter, 122).

has_max_water_lvl_tolerance(4-wheel, 1).
has_max_water_lvl_tolerance(boat, 0).
has_max_water_lvl_tolerance(jet_ski, 0).
has_max_water_lvl_tolerance(helicopter, 100).

location_of_vehicle(4-wheel, 22).
location_of_vehicle(boat, 34).
location_of_vehicle(jey_ski, 41).
location_of_vehicle(helicopter, 19).

max_speed(4-wheel, 130).
max_speed(boat, 100).
max_speed(jey_ski, 148.06).
max_speed(helicopter, 400.80).

capacity_of(4-wheel, 500).
capacity_of(boat, 100).
capacity_of(jey_ski, 50).
capacity_of(helicopter, 546).

fuel_capacity(4-wheel, 120).
fuel_capacity(boat, 100).
fuel_capacity(jey_ski, 43).
fuel_capacity(helicopter, 344).


victim_location(rommadon_teedo,bantung).
victim_location(tanapon_meesat,swangdandin).
victim_location(akarachai_passavaranan,warichaphum).
victim_location(roiboon_chaiyachit,pangkome).
victim_location(khanutchon, atlantis).
victim_location(kamalanon, ratchada).
victim_location(settapong, nonthaburi).
victim_location(john_doe, bangken).
victim_location(jane_doe, chatuchak).

victim_coordinate(rommadon_teedo,10,20).
victim_coordinate(tanapon_meesat,2,100).
victim_coordinate(akarachai_passavaranan,33,4).
victim_coordinate(roiboon_chaiyachit,4,12).
victim_coordinate(khanutchon, 6, 42).
victim_coordinate(kamalanon, 8, 23).
victim_coordinate(settapong, 5, 21).
victim_coordinate(john_doe, 2 , 4).
victim_coordinate(jane_doe, 5, 6).

aid_center(a).
aid_center(b).
aid_center(c).
aid_center(d).
aid_center(e).
aid_center(f).

aid_center_coordinate(a,55,8).
aid_center_coordinate(b,245,1).
aid_center_coordinate(c,73,34).
aid_center_coordinate(d,12,98).
aid_center_coordinate(e,656,7).
aid_center_coordinate(f,4,0).

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
health_condition(roiboon_chaiyachit,aids).

food_health_condition(canned_mackerel_in_tomatoes_sauce,seafood).
food_health_condition(canned_mackerel_in_chili_sauce,seafood).
food_health_condition(pasteurized_milk,milk).
food_health_condition(congee,liquid).
food_health_condition(soup,liquid).

quantity_food(canned_mackerel_in_tomatoes_sauce,44000).
quantity_food(canned_mackerel_in_chili_sauce,34000).
quantity_food(pasteurized_milk,66669).

type(canned_mackerel_in_tomatoes_sauce,canned).
type(canned_mackerel_in_chili_sauce,canned).
type(pasteurized_milk,uht_milk).
type(congee,liquid).
type(soup,liquid).




expired_date(canned_mackerel_in_tomatoes_sauce,09/11/2583).
expired_date(canned_mackerel_in_chili_sauce,09/11/2583).
expired_date(pasteurized_milk,02/04/2563).



flood(X) :- location(X) , has_water_level(X,Y) , Y>1.

supply_food(X) :- victim(X) , victim_location(X,Y) ,flood(Y).

sick(X) :- health_condition(X,Y) , not(Y=none).

supply_medicine(X) :- victim(X), sick(X).

growable(X , Y) :-  water_level_tolerance(X,Z) ,  has_water_level(Y,W) , Z > W.

supply_crops(X,Y) :- victim_location(X,Z), growable(Y, Z). 

age(X , Y) :- birthyear(X,Z),Y is 2560 - Z.

is_infant(X) :- age(X,Y) , Y < 2.

is_elder(X) :- age(X,Y) , Y > 60.

edible(X,Y) :- is_elder(X), food_health_condition(Y,liquid).

edible(X,Y) :- is_infant(X) , food_health_condition(Y,milk).

edible(X,Y) :- not(is_infant(X)),not(is_elder(X)) ,not(sick(X)) , food_health_condition(Y,A) , not(A=milk).

edible(X,Y) :- not(is_infant(X)) , sick(X) , food_health_condition(Y,A) , not(A=milk),not(A=seafood).

car_accessible(X) :- has_water_level(X,Y) ,  Y < 0.99 .

critical(X) :- has_water_level(X,Y) , Y>2.

suitable_vehicle(X,A) :- (car_accessible(X)) , has_max_water_lvl_tolerance(A, 1).

suitable_vehicle(X,A) :- not(car_accessible(X)),not(critical(X)) , has_max_water_lvl_tolerance(A, 0).

suitable_vehicle(X,A) :- not(car_accessible(X)),critical(X) , has_max_water_lvl_tolerance(A, 100).

nearest_center(X , F , C) :- victim_coordinate(X,A,B) , aid_center_coordinate(C,D,E), F is ((D-A)*(D-A))+((E-B)*(E-B)),aid_center_coordinate(M,N,O),G is ((N-A)*(N-A))+((O-B)*(O-B)),M\=C,F < G.








flood_duration(V,D) :- victim_location(V,L),has_water_level(L,H),D is round(6.94*sqrt(H)).



is_his_rice_die(V) :- victim_plant_rice_type(V,E),victim_location(V,A),water_level_tolerance(E,T),has_water_level(A,L),T<L.

help_rice(V,T,A) :- is_his_rice_die(V) ,victim_plant_rice_type(V,T),victim_has_crop_quantity(V,A).

help_food(V,T,A) :- flood_duration(V,D),edible(V,T), A is D * 3.

supply(V,R,A,F,M) :- help_rice(V,R,A) ;help_food(V,F,M).







