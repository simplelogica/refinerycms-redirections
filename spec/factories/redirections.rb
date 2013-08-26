# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :redirection, class: Refinery::Redirections::Redirection do
    from_url { Faker::Internet.domain_name }
    to_url { Faker::Internet.domain_name }
    status_code { [301, 302, 303, 307].sample }
  end
end
