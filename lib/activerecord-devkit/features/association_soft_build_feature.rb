RubyFeatures.define 'activerecord_devkit/association_soft_build' do
  apply_to 'ActiveRecord::Relation' do

    instance_methods do
      def soft_build
        klass.new(where_values_hash)
      end
    end

  end
end
