class Zoo < ActiveRecord::Base
    has_many :animals
    has_many :conservation_funds, through: :animals

    def without_fund_by_animal(animal, new_fund)
        animal = Animal.find_by(species: animal, conservation_fund_id: nil, zoo_id: self.id)
        animal.update(conservation_fund_id: new_fund.id)
    end

end