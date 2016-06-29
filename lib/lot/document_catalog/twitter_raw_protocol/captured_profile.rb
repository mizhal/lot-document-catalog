module Lot
  module DocumentCatalog
    module TwitterRawProtocol
      class CapturedProfile
      	include Mongoid::Document
        
      	field :screen_name
      	field :full_name
      	field :user_id
      	field :description
      	field :creation_date
      	field :location
      	field :lang
      	field :timezone
        field :first_seen
        field :last_seen

      end
    end
  end
end