require_relative "captured_profile"
require_relative "captured_tweet"
require_relative "twitter_link"
require_relative "twitter_target"

module Lot
  module DocumentCatalog
    module TwitterRawProtocol
      class << self
        
        def catalog
          @catalog = @catalog || OpenStruct.new(
            "CapturedProfile" => CapturedProfile,
            "TwitterLink" =>  TwitterLink,
            "CapturedTweet" => CapturedTweet
          )
        end

      end
    end
  end
end