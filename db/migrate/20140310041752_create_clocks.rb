class CreateClocks < ActiveRecord::Migration
  def change
    create_table :clocks do |t|
      t.datetime :clock_in
      t.datetime :clock_out
      t.integer  :user_id
    end
  end
end
