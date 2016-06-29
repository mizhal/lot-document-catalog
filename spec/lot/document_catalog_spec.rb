require 'spec_helper'

module Lot
  module DocumentCatalog
    describe Lot::DocumentCatalog do
      it 'has a version number' do
        expect(Lot::DocumentCatalog::VERSION).not_to be nil
      end

      it 'db connection can be configured' do
        Lot::DocumentCatalog.configure do |c|
          c.mongoid_file = "spec/mongo.yml"
          c.environment = "test"
        end

        expect(Connection.connected?).to be true

        # prev = TwitterRawProtocol::CapturedProfile.count 
        
        # profile = TwitterRawProtocol::CapturedProfile.new
        # expect(profile.save).to be true
        # expect(TwitterRawProtocol::CapturedProfile.count).to be prev + 1

        # profile.destroy
      end
    end
  end
end
