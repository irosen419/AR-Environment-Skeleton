Zoo.delete_all
Animal.delete_all
ConservationFund.delete_all


cpz = Zoo.create(location: "NYC",name: "Central Park Zoo")
bronx = Zoo.create(location: "NYC", name: "Bronx Zoo")
siz = Zoo.create(location: "NYC", name: "State Island Zoo")
lpz = Zoo.create(location: "Chicago", name: "Lincoln Park Zoo")
cmz = Zoo.create(location: "Colorado Springs", name: "Cheyenne Mountain Zoo")
sdz = Zoo.create(location: "San Diego", name: "San Diego Zoo")
cz = Zoo.create(location: "Columbus", name: "Columbus Zoo")

wwf = ConservationFund.create(name: "WWF")
wcs = ConservationFund.create(name: "WCS")
ng = ConservationFund.create(name: "NatGeo")
iucn = ConservationFund.create(name: "IUCN")

elephant = Animal.create(species: "african elephant", conservation_status: "EN", conservation_fund_id: nil, zoo_id: cpz.id)
elephant2 = Animal.create(species: "african elephant", conservation_status: "EN", conservation_fund_id: nil, zoo_id: cpz.id)
pangolin = Animal.create(species: "chinese pangolin", conservation_status: "CR", conservation_fund_id: iucn.id, zoo_id: sdz.id)
bison = Animal.create(species: "american bison", conservation_status: "VU", conservation_fund_id: ng.id, zoo_id: lpz.id)
rhino = Animal.create(species: "rhinocerous", conservation_status: "EN", conservation_fund_id: wwf.id, zoo_id: cmz.id)