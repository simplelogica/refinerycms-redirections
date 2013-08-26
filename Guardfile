# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'spork', :cucumber_env => { 'RAILS_ENV' => 'test' }, :rspec_env => { 'RAILS_ENV' => 'test' } do
  watch('config/application.rb')
  watch('config/environment.rb')
  watch('config/environments/test.rb')
  watch(%r{^config/initializers/.+\.rb$})
  watch('Gemfile')
  watch('Gemfile.lock')
  watch('spec/spec_helper.rb') { :rspec }
  watch(%r{spec/support/(.+).rb}) { :rspec }
  watch(%r{^app/models/.+\.rb$}) { :rspec }
  watch(%r{^app/controllers/.+\.rb$}) { :rspec }
end

guard 'rspec', :cli => "--color --format nested --fail-fast --drb", :run_all => { :cli => "-p --color" }, :all_after_pass => false do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }

  # Rails example
  watch(%r{^app/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^app/(.*)(\.erb|\.haml)$})                 { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }


  watch(%r{^app/models/refinery/redirections/(.+)\.rb$})  { |m| ["spec/models/#{m[1]}_spec.rb",] }

  watch(%r{^app/controllers/refinery/redirections/(.+)_controller\.rb$})  { |m| ["spec/requests/#{m[1]}_spec.rb",] }

  watch(%r{^spec/support/(.+)\.rb$})                  { "spec" }

  # Capybara features specs
  watch(%r{^app/views/((.+)/)+.*\.(erb|haml)$})          { |m| Dir[File.join("spec/requests/#{m[1]}/*_spec.rb")]  }

  # Turnip features and steps
  watch(%r{^spec/acceptance/(.+)\.feature$})
  watch(%r{^spec/acceptance/steps/(.+)_steps\.rb$})   { |m| Dir[File.join("**/#{m[1]}.feature")][0] || 'spec/acceptance' }

end
