module Lot
  module DocumentCatalog
    module TwitterRawProtocol
      class TwitterLink
        include Mongoid::Document

        field :screen_name1
        field :screen_name2
        field :kind
        field :first_seen
        field :last_seen
        field :active

        ## ENUMS
        KIND = ["follow", "block"]
        ## FIN: ENUMS

      end
    end
  end
end