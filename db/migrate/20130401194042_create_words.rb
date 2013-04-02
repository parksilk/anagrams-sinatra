class CreateWords < ActiveRecord::Migration
  def change
    create_table(:words) do |t|
      t.string :anagram
      t.string :sorted
    end
  end
end
