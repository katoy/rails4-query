
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

=begin
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
=end

# 1. データベースからオブジェクトを取り出す
# 2. 条件
# 3. 並び順
# 4. 特定のフィールドだけを取り出す
# 5. LimitとOffset
# 6. グループ
# 7. Having
# 8. 条件を上書きする
# 9. Nullリレーション
# 10. 読み取り専用オブジェクト
# 11. レコードを更新できないようロックする
# 12. テーブルを結合する
# 13. 関連付けを一括読み込みする
# 14. スコープ
# 15. 動的ファインダ
# 16. メソッドチェインを理解する

=begin
# 17. 新しいオブジェクトを検索またはビルドする
pp 'Client.find_or_create_by(first_name: "Andy", last_name: "Smith")'

pp 'Client.create_with(locked: true).find_or_create_by(first_name: "AndyX")'
pp '
Client.find_or_create_by(first_name: "AndyY") do |c|
  c.locked = true
end
""
'
pp 'Client.find_or_create_by!(last_name: "x", locked: true)'

pp '
nick = Client.find_or_initialize_by(first_name: "Nick")
p "before save:"
p nick
nick.save!
p "after save:"
p nick
'

# 18. SQLで検索する
pp 'Client.where(locked: true).pluck(:id)'

pp 'Client.select(:id, :first_name).map { |c| [c.id, c.first_name] }'
pp 'Client.pluck(:id, :first_name)'

pp 'Client.limit(2).pluck(:id, :first_name, :last_name)'
pp 'Client.ids'

# 19. オブジェクトの存在チェック
pp 'Client.exists?(1)'
pp 'Client.exists?(id: [1,2,99])'
pp 'Client.where(first_name: "Ryan").exists?'
pp 'Client.exists?'
pp 'Client.all.first.orders.any?'

# 20. 計算
pp 'Client.count'
pp 'Client.where(first_name: "安倍").count'
pp 'Client.includes("orders").where(first_name: "Ryan", orders: { status: :received }).count'
pp 'Client.count(:orders_count)'

pp 'Client.average("orders_count")'
pp 'Client.minimum("orders_count")'
pp 'Client.maximum("orders_count")'

# 21. EXPLAINを実行する

=end
