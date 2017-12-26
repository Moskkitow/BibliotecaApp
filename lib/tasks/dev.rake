namespace :dev do

	desc "Steup Dvelopment"

	task setup: :environment do

		puts "Executando o Setup"
		puts "Apagando DB" #{%x (rake db:drop)}
		puts "Criand DB" #{%x (rake db:create)}

		puts %x(rake db:migrate)

	end

end