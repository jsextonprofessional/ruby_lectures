class User < ActiveRecord::Base
    validates :fname, presence: true
end
