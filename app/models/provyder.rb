class Provyder < ApplicationRecord
has_many :appointments
has_many :clients, through: :appointments

validates_uniqueness_of :id

# format name method?

end
