require 'dm-timestamps'

class Bleat

  include DataMapper::Resource

  property :id,           Serial
  property :content,      Text,       :length => 140
  property :created_at,   DateTime

end