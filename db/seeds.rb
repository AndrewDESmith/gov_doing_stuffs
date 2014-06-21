# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
andrew = User.find_or_create_by(email: "andrew.d.e.smith@gmail.com", encrypted_password: "$2a$10$GAdqJLOfrvCqI4uAnxPjz.xRu4ONt.3ww7ZM/Us57seh...", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-06-21 17:15:01", last_sign_in_at: "2014-06-21 17:15:01", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", provider: nil, uid: nil)
husein = User.find_or_create_by(email: "huseinkareem@gmail.com", encrypted_password: "$2a$10$b2b8prFozO0jH99KF.cN6uvM5Uh5v39I.Aa.1KtXz3hD...", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-06-21 17:16:27", last_sign_in_at: "2014-06-21 17:16:27", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1",  provider: nil, uid: nil)
owen = User.find_or_create_by(email: "blue.apple@sympatico.ca", encrypted_password: "$2a$10$zVI46Kef3nz03/D/FOfnXODPNWV1eOFTgSo/W1eh/pWz...", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-06-21 17:17:34", last_sign_in_at: "2014-06-21 17:17:34", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", provider: nil, uid: nil)


cat_1 = andrew.categories.find_or_create_by(name: "Cat_1")
cat_2 = husein.categories.find_or_create_by(name: "Cat_2")
cat_3 = owen.categories.find_or_create_by(name: "Cat_3")

project_1_1 = cat_1.projects.find_or_create_by(:name =>"Project_1_Cat_1", :description =>"Project_1_Cat_1")
project_2_1 = cat_2.projects.find_or_create_by(:name =>"Project_1_Cat_2", :description =>"Project_1_Cat_2")
project_3_1 = cat_3.projects.find_or_create_by(:name =>"Project_1_Cat_3", :description =>"Project_1_Cat_3")

request_1_1 = project_1_1.requests.find_or_create_by(:citizen_name => "anonymous", :email=>"anonymous@gmail.com",:phone => "123456", :comment => "Comment")
request_2_1 = project_2_1.requests.find_or_create_by(:citizen_name => "anonymous", :email=>"anonymous@gmail.com",:phone => "123456", :comment => "Comment")
request_3_1 = project_3_1.reqeusts.find_or_create_by(:citizen_name => "anonymous", :email=>"anonymous@gmail.com",:phone => "123456", :comment => "Comment")