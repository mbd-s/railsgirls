class Attendee < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  geocoded_by :address
after_validation :geocode
end
