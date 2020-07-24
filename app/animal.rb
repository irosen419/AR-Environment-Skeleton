class Animal < ActiveRecord::Base
    belongs_to :zoo
    belongs_to :conservation_fund
end