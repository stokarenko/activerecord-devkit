RSpec.configure do |config|
  config.before(:all) do
    create_database
  end

  def create_database
    ActiveRecord::Migration.verbose = false
    ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: ':memory:')
    ActiveRecord::Schema.define(version: 1) do
      create_table :users
      create_table :roles do |t|
        t.references :user
      end
    end
  end
end

class User < ActiveRecord::Base
  has_many :roles
end

class Role < ActiveRecord::Base
  belongs_to :user
end
