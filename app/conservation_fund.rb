class ConservationFund < ActiveRecord::Base
    has_many :animals
    has_many :zoos, through: :animals

    def self.find_all_by_status(status)
        Animal.where(conservation_status: status)
    end

end