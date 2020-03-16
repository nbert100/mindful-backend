class Provyder < ApplicationRecord
has_many :appointments
has_many :clients, through: :appointments

# format name method?

end
