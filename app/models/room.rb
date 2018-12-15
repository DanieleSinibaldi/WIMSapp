class Room < ApplicationRecord
  # validations
  validates_presence_of :name, :place, :floor, :nseat, :hopen, :minopen,
                        :hclose, :minclose, :occupation, :latitude, :longitude
end
