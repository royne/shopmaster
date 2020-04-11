namespace :shop do
  
  task init: :environment do
   u = User.new(email: 'admin@mail.com', password: 123456)
   u.add_role(:admin)
   u.save!
  end

end
