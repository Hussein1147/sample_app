

FactoryGirl.define do
factory :user do |user|
  user.name                "Djibril Keita"
  user.email               "djibrilhms@gmail.com"
  
  user.password             "foobar"
  user.password_confirmation "foobar"
end
end
