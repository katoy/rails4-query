
begin
  ActiveRecord::Base.transaction do

    Address.delete_all
    Client.delete_all
    Order.delete_all

    Client.create!([
      { first_name: 'Ryan', last_name: '' },
      { first_name: 'Lifo', last_name: '' },
      { first_name: 'Sara', last_name: '' },
      { first_name: 'Fifo', last_name: '' },
      { first_name: 'Filo', last_name: '' },
      { first_name: 'ussel', last_name: '' }
    ])
  end
rescue => e
  puts "Rollback for RecruitingStatus:\n#{e}"
end
