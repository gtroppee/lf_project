15.times do |i|
  Survey.create(
    title: "title #{i}",
    comment: "comment #{i}",
    user_name: "name #{i}",
    user_email: "user@gmail.com #{i}"
  )
end  