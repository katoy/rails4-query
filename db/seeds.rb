
begin
  ActiveRecord::Base.transaction do
    Address.delete_all
    Client.delete_all
    Order.delete_all

    Client.create!([
      { first_name: 'Ryan', last_name: 'Rachid' },
      { first_name: 'Lifo', last_name: 'Rachid', locked: true },
      { first_name: 'Sara', last_name: 'Rachid', orders_count: 2 },
      { first_name: 'Fifo', last_name: 'Smith' },
      { first_name: 'Filo', last_name: 'Smith', locked: true, orders_count: 2 },
      { first_name: '安倍', last_name: '太郎', locked: true, orders_count: 1 },
      { first_name: '安倍', last_name: '次郎', locked: true, orders_count: 3 },
      { first_name: 'ussel', last_name: 'Smith' }
    ])

    now = Time.now
    cl = Client.all[0]
    cl.orders.build([
      { price: 100, ordered_at: 1.days.ago(now) },
      { price: 200, ordered_at: 5.hours.ago(now) },
      { price: 400, ordered_at: 1.days.ago(now) }
    ])
    cl.save!
    cl = Client.all[1]
    cl.orders.build([
      { price: 110, ordered_at: 1.days.ago(now) },
      { price: 210, ordered_at: 5.hours.ago(now) },
      { price: 410, ordered_at: 2.days.ago(now) }
    ])
    cl.save!
  end
rescue => e
  puts "Rollback for RecruitingStatus:\n#{e}"
end
