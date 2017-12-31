FactoryGirl.define do
  factory :ticket do
    train
    user
    association :start_station, factory: :railway_station
    association :end_station, factory: :railway_station
  end
end
