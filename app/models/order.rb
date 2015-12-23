# Order
class Order < ActiveRecord::Base
  belongs_to :client, counter_cache: true

  default_scope -> { order('ordered_at DESC') }
end
