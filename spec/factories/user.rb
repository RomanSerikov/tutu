FactoryGirl.define do
  factory :user do
    email                 'user@test.com'
    password              'password'
    password_confirmation 'password'
    confirmed_at           Date.today

    factory :admin do
      admin true
    end
  end
end
