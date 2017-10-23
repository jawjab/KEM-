# KEM-
---
## Food Subsidy Support during mid-post flood
The main functional rule is the supply() rule. It functions as suggestion rule which has parameters in format of: supply(VictimName, RiceType, RiceAmount, FoodType, FoodAmount)
The input usually is VictimName; the rule then suggests following goods that the victim should receive including, rice and food both in type and amount.
* Example of all victims in KB:
  * victim(rommadon_teedo).
  * victim(tanapon_meesat).
  * victim(akarachai_passavoranan).
  * victim(roiboon_chaiyachit).
  * victim(settapong).
  * victim(kamalanon).
  * victim(khanutchon).
  * victim(john_doe).
  * victim(jane_doe).
 * Example of supply rule.
   * supply(akarachai_passavoranan,R,A,F,M).
   * supply(rommadon_teedo,R,A,F,M).
   * supply(roiboon_chaiyachit,R,A,F,M).
## Members
 
* Rommadon Teedo
  * 5810545025
* Tanapon Meesat
  * 5810545408
* Akarachai Passavoranan
  * 5810545505
* Roiboon Chaiyachit
  * 5810546005
* Settapong Peamlue
  * 5810546048
* Kan Kamalanon
  * 5810546587
* Khanutchon Ammawong
  * 5810546609



## Rule (How it derived)
```prolog
sick(X)
Input​ ​ a ​ ​ name​ ​ of​ ​ person.
Output​ ​ True​ ​ if​ ​ health_condition(name,disease)​ ​ is equal true .

age(X)
Input​ ​ a ​ ​ name​ ​ of​ ​ person.
Output​ ​ 2560(current​ ​ year)​ ​ - ​ ​ birthYear​ ​ from​ ​ birth_year(name,birthYear).

is_infant(X)
Input​ ​ a ​ ​ name​ ​ of​ ​ a ​ ​ person.
Output​ ​ True​ ​ if​ ​ age(X)​ ​ return​ ​ a ​ ​ value​ ​ less​ ​ than​ ​ 2

is_elder(X)
Input​ ​ a ​ ​ name​ ​ of​ ​ a ​ ​ person.
Output​ ​ True​ ​ if​ ​ age(X)​ ​ return​ ​ a ​ ​ value​ ​ larger​ ​ than​ ​ 60

edible(X,Y)
Case​ ​ : ​ ​ elder
Input​ ​ a ​ ​ name​ ​ of​ ​ person​ ​ is_elder(name)​ ​ = ​ ​ true.
Output​ ​ food​ ​ type​ ​ liquid.
Case​ ​ : ​ ​ infant
Input​ ​ a ​ ​ name​ ​ of​ ​ person​ ​ is_infant(name)​ ​ = ​ ​ true.
Output​ ​ food​ ​ type​ ​ milk.
Case​ ​ : ​ ​ normal​ ​ person
Input​ ​ a ​ ​ name​ ​ of​ ​ person.
If​ ​ he/she​ ​ not​ ​ infant​ ​ , ​ ​ elder​ ​ , ​ ​ sick​ ​ person​ ​ then
Output​ ​ any​ ​ kind​ ​ of​ ​ foods​ ​ except​ ​ milk.
Case​ ​ : ​ ​ sick​ ​ person
Input​ ​ a ​ ​ name​ ​ of​ ​ person​ ​ sick(name)​ ​ = ​ ​ true.
Output​ ​ food​ ​ type​ ​ liquid​ ​ except​ ​ seafood.

flood_duration(V,D)
Input​ ​ victim​ ​ name​ ​ .
Output​ ​ the​ ​ amount​ ​ of​ ​ days​ ​ until​ ​ the​ ​ flood​ ​ subsides,​ ​ calculate​ ​ from​ ​ the​ ​ water​ ​ level​ ​ of​ ​ the​ ​ victim​ ​ using​ ​ the formula​ ​ round(6.94*sqrt(H))​ ​ with​ ​ H ​ ​ being​ ​ the​ ​ water​ ​ level​ ​ of​ ​ the​ ​ victim.

is_his_rice_die(V)
Input​ ​ victim​ ​ name.
Output​ ​ true​ ​ if​ ​ the​ ​ water​ ​ level​ ​ in​ ​ the​ ​ victim​ ​ location​ ​ is​ ​ higher​ ​ than​ ​ the​ ​ water​ ​ tolerance​ ​ of​ the​ ​ victim’s​ ​ rice.

help_rice(V,T,A)
Input​ ​ victim​ ​ name.
Output​ ​ the​ ​ type​ ​ and​ ​ amount​ ​ of​ ​ rice​ ​ the​ ​ victim​ ​ will​ ​ receive​ ​ according​ ​ what​ ​ type​ ​ of​ ​ rice​ ​ he​ ​ has​ ​ planted​ ​ and his cultivated area in rai unit multiply by 0.4356 equal to amount of seed he will get in kg unit.

help_food(V,T,A)
Input​ ​ victim​ ​ name.
Output​ ​ the​ ​ amount​ ​ of​ ​ food​ ​ in​ ​ a ​ ​ unit​ ​ of​ ​ meal​ ​ and​ ​ what​ ​ food​ ​ to​ ​ send​ ​ according​ ​ to​ ​ the​ ​ flood​ ​ duration​ ​ and​ ​ the victim's​ ​ health​ ​ condition.

supply(V,R,A,F,M)
Input​ ​ victim​ ​ name.
Output​ ​ the​ ​ amount​ ​ and​ ​ type​ ​ of​ ​ rice​ ​ and​ ​ amount​ ​ and​ ​ type​ ​ of​ ​ food​ ​ for​ ​ that​ ​ victim,​ ​ determine​ ​ the​ ​ type​ ​ and amount​ ​ using​ ​ help_food(V,F,M)​ ​ and​ ​ help_rice(V,R,A)
```
