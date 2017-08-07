FactoryGirl.define do
  factory :train do
    number 42
    head_sort true
    route
    current_station

    factory :train_with_coupe_carriages do
      transient { carriages_count 2 }

      after(:create) do |train, evaluator|
        create_list(:coupe_carriage, evaluator.carriages_count, train: train)
      end
    end
  end
end
