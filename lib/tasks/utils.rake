namespace :utils do
  desc "Popular do Banco de Dados"
  task seed: :environment do
    puts "Criando contatos ..."
    100.times do |i| 
      Contato.create!(
        nome: Faker::Name.name ,
        email: Faker::Internet.email,
        tipo: Tipo.all.sample,
        observacao: Faker::Lorem.paragraph(2)
      )
    end
    puts "Contatos criados - 100%"
    
    puts "Criando Endereços"
      Contato.all.each do |contact| 
        Endereco.create!(
        rua: Faker::Address.street_address,
        cidade: Faker::Address.city,
        estado: Faker::Address.state,
        contato: contact
        )
      end
    puts "Endereços criados - 100%"
    
     puts "Criando Telefones"
     Contato.all.each do |contact|  
      Random.rand(1..5).times do |i|
        Telefone.create!( 
          telefone: Faker::PhoneNumber.phone_number,
          contato: contact
        )
      end
     end
    puts "Telefones criados - 100%"
    
  end

end
