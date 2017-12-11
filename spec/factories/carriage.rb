FactoryGirl.define do
  factory :carriage do
    train

    factory :coupe_carriage, class: CoupeCarriage do
      type 'CoupeCarriage'
      topseats 18
      botseats 18
    end

    factory :platscard_carriage, class: PlatscardCarriage do
      type 'PlatscardCarriage'
      topseats 18
      botseats 18
      side_top_seats 9
      side_bot_seats 9
    end

    factory :sv_carriage, class: SvCarriage do
      type 'SvCarriage'
      botseats 19
    end

    factory :chair_carriage, class: ChairCarriage do
      type 'ChairCarriage'
      chair_seats 48
    end
  end
end
