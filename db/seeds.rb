User.create!(name:  "Shino",
    email: "vumhquangg@gmail.com",
    password:              "minminmin",
    password_confirmation: "minminmin",
    admin:     true,
    activated: true,
    activated_at: Time.zone.now)


99.times do |n|
name  = "Shino-#{n+1}"
email = "vumhquangg-#{n+1}@gmail.com"
password = "minminmin"
User.create!(name:  name,
      email: email,
      password:              password,
      password_confirmation: password,
      activated: true,
      activated_at: Time.zone.now)
end