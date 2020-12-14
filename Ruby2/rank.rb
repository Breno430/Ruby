def salva_rank(nome, pontos_totais)
  conteudo = "#{nome} #{pontos_totais}"
  File.write "rank.txt", conteudo
end

def le_rank
  conteudo =  File.read "rank.txt"
  conteudo.split "\n"
end
