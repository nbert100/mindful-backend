class Appointment < ApplicationRecord
    belongs_to :client
    belongs_to :provyder

    validates :when, presence: true
    validates :provyder, presence: true
    validates_associated :provyder

    def provyder_attributes=(attributes)
        provyder = Provyder.find_or_create_by(attributes)
        self.provyder = provyder if provyder.valid? || !self.provyder
    end
end
