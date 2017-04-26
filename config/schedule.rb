# Daily run rake task to delete todo items older than 7 days
every 1.day, :at => '12:01 am' do
  rake 'todo:delete_items'
end
