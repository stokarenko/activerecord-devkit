require 'activerecord-devkit/version'

require 'active_record'

module ActiveRecordDevkit
  autoload :Relation, 'activerecord-devkit/relation'
end

require 'activerecord-devkit/railtie'
