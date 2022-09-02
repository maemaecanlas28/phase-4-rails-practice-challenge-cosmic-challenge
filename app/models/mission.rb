class Mission < ApplicationRecord
    validates :name, presence: true
    validates :planet, presence: true
    validates :scientist, presence: true, uniqueness: { scope: :name,
        message: "A scientist cannot join the same mission twice" }

    belongs_to :scientist
    belongs_to :planet
end
