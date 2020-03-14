class Appointment < ApplicationRecord
    belongs_to :client
    belongs_to :provyder

    validates :when, presence: true
end
