def avisa_chute(chute)
  puts "Você já chutou #{chute}"
end

def letra_nao_encontrada
  puts "Letra não encontrada."
end

def letra_encontrada(total_encontrado)
  puts"Letra encontrada #{total_encontrado} vezes."
end

def avisa_acertou
  puts "Parabéns! Acertou"
end

def avisa_errou
  puts "HAHAHA, você errou..."
end

def avisa_pontos(pontos_ate_agora)
  puts "Você ganhou #{pontos_ate_agora} pontos"
end

def boas_vindas
  puts "Bem Vindo(a) ao jogo da forca"
  puts "Qual é o seu nome?"
  nome = gets
  puts "\n\n\n\n\n\n"
  puts "Começaremos o jogo para você, #{nome}"
  nome
end

def escolher_palavra_secreta
  puts "Escolhendo uma palavra secreta..."
  palavra_secreta = "Antonio"
  puts "Palavra secreta com #{palavra_secreta.size} letras, boa sorte"
  palavra_secreta
end

def nao_quero_jogar?
  puts "Deseja jogar novamente? (S/N)"
  quero_jogar = gets.strip
  nao_quero_jogar = quero_jogar.upcase == "N"
end

def cabecalho(chutes, erros, mascara)
  puts "\n\n\n\n"
  puts "Palavra Secreta: #{mascara}"
  puts "Erros até agora: #{erros}"
  puts "Chutes até agora #{chutes}"
end

def pede_um_chute
  puts "Entre com uma letra ou uma palavra"
  chute = gets.strip
  puts "Será que você acertou? Você chutou #{chute}"
  chute
end
