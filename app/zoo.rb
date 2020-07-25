class Zoo < ActiveRecord::Base
    has_many :animals
    has_many :conservation_funds, through: :animals

    def without_fund_by_animal(animal, new_fund)
        animal = Animal.where(species: animal, conservation_fund_id: nil, zoo_id: self.id)
        animal.each {|a| a.update(conservation_fund_id: new_fund.id)}
    end

end