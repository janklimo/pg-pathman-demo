seller = Seller.create(name: 'Jan', email: 'my@email.com')

product_names = %w(chair table sofa carpet lamp)

product_names.each do |name|
  Product.create(name: name, price_cents: 4200, seller: seller)
end

ActiveRecord::Base.connection.execute <<-SQL
  INSERT INTO transactions (type, total_cents, product_id, seller_id, created_at, updated_at)
    SELECT 'Purchase', random() * 6, #{Product.last.id}, #{seller.id}, g, g
    FROM generate_series('2017-01-01'::date, '2018-12-31'::date, '1 minute') as g;
SQL
