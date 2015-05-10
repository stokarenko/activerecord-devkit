module ActiveRecordDevkit
  module Relation
    extend ActiveSupport::Concern

    def soft_build
      klass.new(where_values_hash)
    end

  end
end
