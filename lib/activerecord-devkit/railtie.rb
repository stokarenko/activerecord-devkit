require 'active_record/railtie'

module AssocitionaSoftBuild
  class Railtie < Rails::Railtie
    #TODO uncoment this and make it work in tests
    #initializer 'activerecord-devkit.configure_rails_initialization' do
      ActiveSupport.on_load :active_record do
        ActiveRecord::Relation.send :include, ActiveRecordDevkit::Relation
      end
    #end
  end
end
