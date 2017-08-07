FactoryGirl.define do
  factory :carriage do
    train
  end

  factory :coupe_carriage, class: CoupeCarriage, parent: :carriage do
    type 'CoupeCarriage'
    topseats 18
    botseats 18
  end
end
