require "mongoid"

require "lot/document_catalog/version"
require "lot/document_catalog/connection"

require "lot/document_catalog/twitter_raw_protocol/twitter_raw_protocol"

module Lot
  module DocumentCatalog
    def self.configure
      yield get_conf
      initialize_mongoid
    end
    
    class << self
      attr_accessor :config

      private 

      def get_conf
        @config ||= Config.new
        @config
      end

      def has_conf?
        @config.present?
      end

      def initialize_mongoid
        Mongoid.load!(@config.mongoid_file, @config.environment)  
      end
    end

    class Config
      attr_accessor :mongoid_file
      attr_accessor :environment
    end
  end
end
