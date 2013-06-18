module Deezer
  # API Doc: http://developers.deezer.com/api/album
  class Album < LogicalModel
    set_resource_url 'api.deezer.com/2.0', '/album'
    force_ssl

    attribute :id             # The album's Deezer id
    attribute :title          # The album's title
    attribute :link           # The url of the album on Deezer
    attribute :cover          # The url of the album's cover. Add 'size' parameter to the url to change size. Can be 'small', 'medium', 'big'
    attribute :genre_id       # The album's genre id
    attribute :label          # The album's label name
    attribute :duration       # The album's duration (seconds)
    attribute :fans           # The number of album's Fans
    attribute :rating         # The playlist's rate
    attribute :release_date   # The album's release date
    attribute :available
    attribute :artist         # artist object containing : id, name, picture

    has_many :tracks

  end
end