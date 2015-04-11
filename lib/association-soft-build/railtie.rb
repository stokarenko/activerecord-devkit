require 'active_record/railtie'

module AssocitionaSoftBuild
  class Railtie < Rails::Railtie
    #TODO uncoment this and make it work in tests
    #initializer 'association-soft-build.configure_rails_initialization' do
      ActiveSupport.on_load :active_record do
        ActiveRecord::Relation.send :include, AssociationSoftBuild::Relation
      end
    #end
  end
end
