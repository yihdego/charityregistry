FactoryBot.define do
  factory :registry do
    title "Boys and Girl Coat Drive"
    description "We are making sure that every kid has a warm coat this winter"
    deadline DateTime.new(2018,2,3)
    user user
  end
end
