require "action_view"

class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper

    def age
        time_ago_in_words(birth_date)
    end 

    COLORS = ["brown", "purple", "orange", "green"]
    SEX = ["M", "F"]
    validates :birth_date, :name, presence: true
    validates :color, presence: true, inclusion: {in: COLORS}
    validates :sex, presence: true, inclusion: {in: SEX}
    validates :birth_date_cannot_be_future, presence: true

    def birth_date_cannot_be_future
        if (birth_date <=> Date.today) == 1 
            return false
        end 
            return true
    end 


end 