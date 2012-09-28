require 'foodcritic'

task :default=> [:test]

task :test => [:foodcritic]

task :foodcritic do 
	sh "bundle exec foodcritic --epic-fail any #{File.dirname(__FILE__)}",:verbose=>false
end