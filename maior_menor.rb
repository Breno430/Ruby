puts "Bem vindo ao jogo de adivinhação"
puts "Digite seu nome"
nome = gets
puts "\n\n\n\n\n"
puts "Vamos começar o jogo, " + nome
puts "Escolhendo um número secreto entre 0 e 200"
numero_secreto = 175
puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
puts "\n\n\n\n\n"
for tentativas in 1..3
puts "Tentativa " + tentativas.to_s + "de 3"
puts "Entre com o numero"
chute = gets
puts "Será que acertou? Você chutou " + chute

acertou = numero_secreto == chute.to_i

if acertou
  puts "Você acertou!"
else
  maior = numero_secreto > chute.to_i
  if maior
    puts "O número secreto é maior!"
  else
    puts "O número secreto é menor!"
  end
end
end