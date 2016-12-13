require 'faker'

FactoryGirl.define do 
	factory :User do |f|
		f.username { Faker::Internet.user_name}
		f.lastname {Faker::Name.last_name}
		f.zipcode  {Faker::Number.between(1,5)}
		f.email { Faker::Internet.email}
		f.password { Faker::Internet.password}
		f.password_confirmation {f.password}
	end
end
