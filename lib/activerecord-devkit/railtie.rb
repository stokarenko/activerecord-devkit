ActiveSupport.on_load :active_record do
  ActiveRecord::Relation.send :include, ActiveRecordDevkit::Relation
end
