require_relative 'ui'

def escolher_palavra_secreta
  escolhendo_palavra_secrete
  texto = File.read("dicionario.txt")
  todas_as_palavras = texto.split "\n"
  numero_escolhido = rand(todas_as_palavras.size)
  palavra_secreta = todas_as_palavras[numero_escolhido].downcase
  avisa_palavra_escolhida(palavra_secreta)
end

# def escolher_palavra_secreta_sem_consumir_muita_memoria
#   escolhendo_palavra_secrete
#   arquivo = File.new("dicionario.txt")
#   quantidade_de_palavras = arquivo.gets.to_i
#   numero_escolhido = rand(quantidade_de_palavras)
#   for linha in 1..(numero_escolhido-1)
#     arquivo.gets
#   end
#   palavra_secreta = arquivo.gets.strip.downcase
#   arquivo.close
#   avisa_palavra_escolhida(palavra_secreta)
# end

def palavra_mascarada(chutes , palavras_secretas)
  mascara = ""
  for letra in palavras_secretas.chars
    if chutes.include? letra
      mascara<<letra
    else
      mascara<<"_"
    end
  end
  mascara
end

def pede_chute_valido(chutes, erros, mascara)
  cabecalho(chutes, erros, mascara)
  loop do
  chute = pede_um_chute
    if chutes.include? chute
      avisa_chute chute
    else
      return chute
    end
  end
end

def joga(nome)
  palavra_secreta = escolher_palavra_secreta
  erros = 0
  chutes = []
  pontos_ate_agora = 0

  while erros < 5
    mascara = palavra_mascarada(chutes, palavra_secreta)
    chute = pede_chute_valido(chutes, erros, mascara)
    chutes << chute
    chutou_uma_letra = chute.size == 1
    if chutou_uma_letra
      letra_procurada = chute[0]
      total_encontrado = palavra_secreta.count letra_procurada
    if total_encontrado == 0
      letra_nao_encontrada
      erros += 1
    else
      letra_encontrada total_encontrado
    end
    else
      acertou = chute == palavra_secreta
      if acertou
        avisa_acertou
        pontos_ate_agora += 100
        break
      else
        avisa_errou
        pontos_ate_agora -= 30
        erros += 1
      end
  end
  end
  avisa_pontos pontos_ate_agora
  pontos_ate_agora
end



def jogo_forca
  nome = boas_vindas
  pontos_totais = 0
  loop do
    pontos_totais += joga(nome)
    avisa_pontos_totais(pontos_totais)
    if nao_quero_jogar?
      break
    end
  end
end