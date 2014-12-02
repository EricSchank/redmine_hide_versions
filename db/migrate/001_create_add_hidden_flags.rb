class CreateAddHiddenFlags < ActiveRecord::Migration
  def change
    change_table :versions do |t|
      t.boolean :hidden, default: false
    end
  end
end
