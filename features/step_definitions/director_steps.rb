Given /^the following movies exist:$/ do |table|
  # table is a Cucumber::Ast::Table
  #pending # express the regexp above with the code you wish you had
  table.hashes.each do |movie|
    Movie.create!(movie)
  end
end
