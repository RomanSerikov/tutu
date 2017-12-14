FactoryGirl.define do
  factory :ticket do
    train
    user
    association :start_station
    association :end_station
  end
end
