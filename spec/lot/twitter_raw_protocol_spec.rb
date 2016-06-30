require 'spec_helper'

RSpec::Expectations.configuration.warn_about_potential_false_positives = false

## protocol, interface, catalog are used indistinctly in this project.

module Lot
  module DocumentCatalog
    describe Lot::DocumentCatalog::TwitterRawProtocol do
      it "provides a catalog that verifies interface 'TwitterRawProtocol' from architectural design" do
        
        catalog = TwitterRawProtocol.catalog

        ## exposes each one of the required classes 
        req_classes = %w{TwitterLink CapturedProfile CapturedTweet TwitterTarget}
        req_classes.each do |r_class|
          expect(catalog.send(r_class).class).to be Class
        end
        ## END: exposes each one of the required classes 

        ## Each class is a collection
        collection_methods = [:all, :create, :find, :find_by, :count, :destroy_all]

        req_classes.each do |r_class|
          _class = catalog.send(r_class)

          collection_methods.each do |c_meth|

            expect {   _class.method(c_meth)   }.not_to raise_error(NameError)

          end

        end
        ## END: Each class is a collection
        
        ## Each object is a persistable / activerecord pattern
        ## END: Each object is a persistable / activerecord pattern


      end
    end
  end
end