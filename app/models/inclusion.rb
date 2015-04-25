class Inclusion < ActiveRecord::Base
  has_one :parent, :class_name => "Document"
  has_one :child, :class_name => "Document"
end
