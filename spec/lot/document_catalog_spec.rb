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

      end

      it "exposes collections as catalogs to upper layers" do
        ## The intention here is to simulate dependency injection.
        ## Instead of linking classes directly by their names, upper layers
        ## are given an object which contains the references to classes with a 
        ## previously stablished name
        ## This way, if we need to change document models or names, upper layers won't
        ## be affected, as long as we respect the collection interface.

        ## objects contanining class references are called "catalogs" 

        expect(TwitterRawProtocol.catalog.TwitterLink).to be TwitterRawProtocol::TwitterLink

      end

    end
  end
end
