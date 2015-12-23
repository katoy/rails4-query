
#
# rails runner samplle.rb
#
Hirb.enable
ActiveRecord::Base.logger = Logger.new(STDOUT)

def pp(x)
  puts x
  puts Hirb::Helpers::AutoTable.render eval(x)
  puts
rescue StandardError => ex
  puts "#{ex}"
end

pp 'Client.find(1)'
pp 'Client.find([1, 3])'
pp 'Client.find([1, 3, 999999])'

pp 'Client.first'
pp 'Client.first(3)'

pp 'Client.last'
pp 'Client.last(3)'
pp 'Client.find_by first_name: "Lifo"'
pp 'Client.find_by! first_name: "does not exist"'

pp 'Client.where("orders_count = ?", 2)'

pp 'Client.where("orders_count = ? AND locked = ?", 2, false)'

pp 'Client.where(orders_count: [1, 3, 5])'

pp 'Client.where.not(orders_count: [1, 3, 5])'

pp 'Client.order(first_name: :desc)'

pp 'Client.select("created_at, first_name")'

pp 'q = Client.select(:last_name).distinct'

pp '
  q = Client.select(:last_name).distinct
  q.distinct(false)'

pp 'q = Client.limit(3)'

pp 'q = Client.limit(3).offset(3)'

pp 'Order.select("date(ordered_at) as ordered_date, sum(price) as total_price").group("date(ordered_at)")'

pp 'Order.select("date(ordered_at) as ordered_date, sum(price) as total_price").
    group("date(ordered_at)").having("sum(price) > ?", 400)'

pp 'Order.where("id > 2").limit(2).order("id desc").unscope(:order)'

pp 'Order.where("id > 2").limit(20).order("id desc").only(:ordered_at, :where)'

pp 'Order.where("id > 2").limit(20).order("id desc").reorder(:ordered_at)'

pp 'Client.where("orders_count > 1").order(:first_name).reverse_order'

pp 'Client.none'
