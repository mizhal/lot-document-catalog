module Lot
  module DocumentCatalog
    module TwitterRawProtocol
      class CapturedTweet
        include Mongoid::Document

        field :text
        field :author
        field :created_at
        field :last_seen
        field :status_id
        field :is_deleted
        field :geo_lat_lng_str

        field :reply_to_tweet_id

        embeds_many :captured_likes
        embeds_many :captured_retweets
      end

      class CapturedLike
        include Mongoid::Document

        field :author
        field :created_at
        field :last_seen
        
        embedded_in :captured_tweet
      end

      class CapturedRetweet
        include Mongoid::Document

        field :author
        field :created_at
        field :last_seen

        embedded_in :captured_tweet
      end
    end
  end
end