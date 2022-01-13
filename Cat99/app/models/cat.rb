class Cat < ApplicationRecord
    COLORS = ['white', 'black', 'orange', 'gold', 'brown', 'blue']
    validates :color, inclusion: {in: COLORS}, presence: true
    validates :sex, inclusion: {in: ["M", "F"]}, presence: true
    validates :birth_date, presence: true
    validates :name, presence: true

    def age
        # puts (Date.today - :birth_date).to_i
        now = Date.today
        year = now.year - self.birth_date.year

        if (self.birth_date+year.year) > now
            year -= 1
        end
        year
    end
end