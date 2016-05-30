FactoryGirl.define do
  factory :ronglua, class: User do
    name {"RongLua9xPro"}
    email {"vuvanlyth@gmail.com"}
    password {"coltech4u"}
    password_confirmation {"coltech4u"}
  end

  factory :laoca, class: User do
    name {"Lao Ca"}
    email {"laoca@gmail.com"}
    password {"12345678"}
    password_confirmation {"12345678"}
  end

  factory :laocai, class: User do
    name {"Lao Cai"}
    email {"laocai@gmail.com"}
    password {"12345678"}
    password_confirmation {"12345678"}
  end

  factory :shine, class: User do
    name {"Shine"}
    email {"shine@gmail.com"}
    password {"12345678"}
    password_confirmation {"12345678"}
  end

  factory :vongnguyetcolang, class: User do
    name {"Vong Nguyet Co Lang"}
    email {"vongnguyetcolang@gmail.com"}
    password {"12345678"}
    password_confirmation {"12345678"}
  end
end
