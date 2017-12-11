FactoryGirl.define do
  factory :train do
    number 42
    head_sort true
    current_station
    association :route, factory: :route, strategy: :build
  end
end
