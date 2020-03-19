class Round < ApplicationRecord
  belongs_to :round_detail
  belongs_to :tournament
  has_many :matches
  has_many :ranks 
  has_many :teams, through: :ranks
end
