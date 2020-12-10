def boas_vindas
  puts "Bem vindo ao jogo de adivinhação"
  puts "Digite seu nome"
  nome = gets.strip
  puts "\n\n\n\n\n"
  puts "Vamos começar o jogo, #{nome}"
end

def sorteio_numero_secreto
  puts "Escolhendo um número secreto entre 0 e 200"
  sorteado = 175
  puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
  puts "\n\n\n\n\n"
  sorteado
end

def pede_numero(chutes,tentativas, limite_tentativas)
  puts "Tentativa #{tentativas} de #{limite_tentativas}"
  puts "Chutes até agora: #{chutes}"
  puts "Entre com o numero"
  chute = gets.strip
  puts "Será que acertou? Você chutou #{chute}"
  chute.to_i
end

def se_acertou(numero_secreto, chute)
  acertou = numero_secreto == chute
  if acertou
    puts "Você acertou!"
    return true
    end
    maior = numero_secreto > chute
    if maior
      puts "O número secreto é maior!"
    else
      puts "O número secreto é menor!"
    end
  false
end

  boas_vindas
  numero_secreto = sorteio_numero_secreto
  chutes = []
  total_de_chutes = 0
  limite_tentativas = 5

for tentativas in 1..limite_tentativas
  chute = pede_numero(chutes,tentativas, limite_tentativas)
  chutes << chute
  total_de_chutes += 1
  break if se_acertou(numero_secreto, chute)
end