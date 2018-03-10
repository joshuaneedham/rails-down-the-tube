# Associations Thoughts

User
has_many :firearms
has_many :barrels, through: :firearms
has_many :outings, though: :barrels

Firearms
belong_to :user
has_many :barrels

Barrels
belong_to :firearm
has_many :outings

Outing
Save for later

