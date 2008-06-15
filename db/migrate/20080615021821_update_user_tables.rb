class UpdateUserTables < ActiveRecord::Migration
  def self.up
    change_table :profiles do |t|
      t.string :head
      t.string :body, :default => "Should be updated!"
      t.string :sort, :default => "none"
      t.string :view, :default => "none"
      t.string :state, :default => "online", :null => false
      t.string :aim, :msn, :yahoo, :myspace, :facebook, :flickr
      t.string :blog, :website, :default => "http://"
      t.date   :birth, :default => Date.civil(y="1982".to_i,m="01".to_i,d="01".to_i)
      t.datetime :last_login, :default => Time.now.utc
    end
  end

  def self.down
  end
end
