class Cat < ApplicationRecord
    def age(birth_date)
        puts (Date.today - birth_date).to_i
    end
end