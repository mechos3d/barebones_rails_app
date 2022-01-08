class Foo < ActiveRecord::Migration[5.2]
  def change
    create_table 'dummies', force: :cascade do |t|
      t.string   'dum_str_field_one'
      t.integer  'dum_int_field_two'
      t.datetime 'created_at',                             null: false
      t.datetime 'updated_at',                             null: false
    end
  end
end
