class EnbalePgPathman < ActiveRecord::Migration[5.2]
  def change
    enable_extension 'pg_pathman'

    add_index :transactions, :created_at

    # Partition table by 1 month, new partitions are automatically
    # added by insert trigger. Run once table is populated:
    # execute <<-SQL
    #   SELECT create_range_partitions('transactions', 'created_at', '2018-01-01'::date, '1 month'::interval);
    # SQL
  end
end
