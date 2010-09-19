class Person < CouchRest::Model::Base
  use_database CouchServer.default_database
  property :name
  property :email
end
