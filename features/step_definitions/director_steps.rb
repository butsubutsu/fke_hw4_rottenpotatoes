Given /^the following movies exist:$/ do |table|
  # table is a Cucumber::Ast::Table
  #pending # express the regexp above with the code you wish you had
  table.hashes.each do |movie|
    Movie.create!(movie)
  end
end
Then /^the director of (.*) should be (.*)$/ do |film_name,film_director|
  #page.all.
  #<ul id='details'>
  p page.body
  assert page.has_content?(film_name.tr('"','')),"a:"+film_name 
  #not good enough: does not fail if expected film_director is a prefix of actual film_director
  assert page.has_content?('Director: '+film_director.tr('"','')),"b "+film_director
end