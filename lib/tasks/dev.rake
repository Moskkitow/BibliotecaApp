namespace :dev do

	desc "Steup Dvelopment"

	task setup: :environment do

		puts "Executando o Setup"
		puts "Apagando DB" #{%x (rake db:drop)}
		puts "Criand DB" #{%x (rake db:create)}

		puts %x(rake db:migrate)
		puts %x(rame db:seed)
		puts %x(rake dev:generate_users)
		puts %x(rake dev:generate_books)

		desc "Cria Usuários Fake"

  		task generate_users: :environment do
    		puts "Cadastrando MEMBROS..."

    		10.times do
      			user = User.new(
        		email: Faker::Internet.email,
        		password: "123456",
        		password_confirmation: "123456",
        		cpf: Faker::CPF.pretty
      		)

    		end

    	puts "Usuários cadastrados com sucesso!"

    	end


   		desc "Cria Livros Fake"

   		task generate_books: :environment do
     		puts "Cadastrando Livros..."
   
     		5.times do
       			Book.create!(
         			title: Faker::Lorem.sentence([2,3,4,5].sample),
         			description: Faker::Lorem.sentences([2,3,4,5].sample),
         			user: User.first,
         			category: Category.all.sample
       			)
     		end
   
     		10.times do
       			Book.create!(
         			title: Faker::Lorem.sentence([2,3,4,5].sample),
         			description: Faker::Lorem.sentences([2,3,4,5].sample),
         			user: User.all.sample,
         			category: Category.all.sample         			
       			)
     		end
   
     		puts "ANÚNCIOS cadastrados com sucesso!"
   		end
  
  	end

end