RubyFeatures.define 'activerecord_devkit/association_soft_build' do
  condition(:activerecord_3){ ActiveRecord::VERSION::MAJOR == 3 }

  apply_to 'ActiveRecord::Relation' do
    applied do
      alias soft_build build
    end
  end

  apply_to 'ActiveRecord::Associations::CollectionProxy' do
    applied do
      delegate :soft_build, to: :@association
    end
  end

  apply_to 'ActiveRecord::Associations::CollectionAssociation' do
    instance_methods if: :activerecord_3 do
      def soft_build(attributes = {}, options = {}, &block)
        build_record(attributes, options, &block).tap do |record|
          yield(record) if block_given?
          set_inverse_instance record
        end
      end
    end

    instance_methods unless: :activerecord_3 do
      def soft_build(attributes = {}, &block)
        build_record(attributes, &block).tap do |record|
          yield(record) if block_given?
        end
      end
    end

  end
end
