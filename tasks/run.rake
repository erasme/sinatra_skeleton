desc "run sinatra app locally"
task :run => "Gemfile.lock" do
    require 'app'
    Sinatra::Application.run!
end

# Gemfile.lock as bundle doesn't touch the file if there is no change
file "Gemfile.lock" => "Gemfile" do
  sh "bundle && touch Gemfile.lock"
end


