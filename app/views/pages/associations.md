# DownTheTu.be Rails Application

## Description
A Rails application that a shooter can use to track the number of rounds that have been fired through a single barrel.

## Application Functionality
Ability to add unlimited firearms.

Ability to add a barrel and associate it with a firearm

Ability to add an outing and associate a firearm/barrel combo, select a date, and add the total number of shots fired through the chosen firearm/barrel combo. Multiple firearm/combo selection on a single outing should be possible.

Expect user to be able to Add a new firearm and one barrel at the time of initially creating a firearm. Initially a new user would expect to have shot rounds through a barrel being add so we also need to allow an initial `total_shots_fired` upon creating a new firearm/barrel combo.

You can't have an outing without selecting a barrel/firearm combo.

Ultimately the purpose of this app is to track the number of shots a particular barrel has had fired through it.


## Associations Ideas

### :user
`has_many :firearms`
`has_many :barrels, through: :firearms`

### :firearm
`belongs_to :user`
`has_many :barrels`
`has_many :outings`

Firearm description
Barrel
total shots fired - based off the outings where the barrel/firearm combo was selected

Show outings table

### :barrel
<!-- `belongs_to :user` `barrel.firearm.user` -->
`belongs_to :firearm`
`has_many :outings`
Which firearm it belongs
totals shots fired - based off the barrel/outings where the barrel/firearm combo was selected

### :outing
`belongs_to :user`
`has_many :firearms, thero@gh: :barrels`
`has_many :barrels, through: :barrel_outings`

select the firearm => the barrel would be selected indirectly
enter date
enter shots taken

Join Table
### :barrel_outing
`belongs_to :barrel`
`belongs_to :outing`
`shots_fired` per barrel


Creating an outing consists of selecting the firearm and entering total number of shots fired.

date
shots_fired

