class Appointment < ApplicationRecord
    belongs_to :client
    belongs_to :provider

    validates :when, presence: true
end
