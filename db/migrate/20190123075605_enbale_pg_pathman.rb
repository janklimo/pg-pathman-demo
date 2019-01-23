class EnbalePgPathman < ActiveRecord::Migration[5.2]
  def change
    enable_extension 'pg_pathman'
  end
end
