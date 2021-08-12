class User2 < ActiveRecord::Base
    validates :name, presence: true
end
