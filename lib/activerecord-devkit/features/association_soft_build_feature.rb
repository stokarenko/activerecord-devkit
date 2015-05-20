RubyFeatures.define 'activerecord_devkit/association_soft_build' do
  apply_to 'ActiveRecord::Relation' do

    instance_methods do
      def soft_build(*args, &block)
        scoping { @klass.new(*args, &block) }.tap do |record|
          proxy_association.set_inverse_instance record
        end
      end
    end

  end
end
