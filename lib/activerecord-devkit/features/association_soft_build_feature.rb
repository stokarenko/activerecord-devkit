RubyFeatures.define 'activerecord_devkit/association_soft_build' do
  apply_to 'ActiveRecord::Associations::CollectionProxy' do
    applied do
      delegate :soft_build, to: :@association
    end
  end

  apply_to 'ActiveRecord::Associations::CollectionAssociation' do
    instance_methods do
      if ActiveRecord::VERSION::MAJOR == 3
        def soft_build(attributes = {}, options = {}, &block)
          build_record(attributes, options, &block).tap do |record|
            yield(record) if block_given?
            set_inverse_instance record
          end
        end
      else
        def soft_build(attributes = {}, &block)
          build_record(attributes, &block).tap do |record|
            yield(record) if block_given?
          end
        end
      end
    end
  end
end
