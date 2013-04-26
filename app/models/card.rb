class Card < ActiveRecord::Base
  belongs_to :deck # deck, deck= -> getter and setter methods got set here
  attr_accessible :back, :front
end
