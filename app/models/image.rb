# Image model
class Image < ActiveRecord::Base
  belongs_to :document
end
