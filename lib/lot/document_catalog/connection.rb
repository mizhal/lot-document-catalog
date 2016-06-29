module Lot
  module DocumentCatalog
    class Connection
      def self.connected?
        db = Mongoid::Clients.default
        begin
        	db[:document_catalog_migrations].count
        	return true
       	rescue Mongo::Error::NoServerAvailable => e
       		return false
       	end
      end
    end
  end
end