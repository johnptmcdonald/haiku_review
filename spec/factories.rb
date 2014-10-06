FactoryGirl.define do
	
    factory :user do
      name     "John McDonald"
      email    "john@example.com"
      password "password"
      password_confirmation "password"
    end 
end