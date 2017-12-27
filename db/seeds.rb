# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cadastrando as CATEGORIAS..."

categories = [ "Romance" ,
               "Ficção" ,
               "Biografia" ,
               "Auto Ajuda"
]

puts "CATEGORIAS criadas com Sucesso!!"

puts "Criando Usário Padrão..."

user = User.new(
  email: "user@user.com",
  password: "123456",
  password_confirmation: "123456",
  cpf: "000.000-00"
)

puts "Usuário cadastrado com sucesso!"