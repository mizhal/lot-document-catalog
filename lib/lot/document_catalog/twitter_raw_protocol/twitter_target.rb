module Lot
  module DocumentCatalog
    module TwitterRawProtocol
      class TwitterTarget
        include Mongoid::Document

        field :screen_name
        field :last_checked
        field :last_seen

      end
    end
  end
end