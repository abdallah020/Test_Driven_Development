# text.rb

# Méthode pour vérifier si un nombre est un multiple de 3 ou de 5
def is_multiple_of_3_or_5?(nombre)
  nombre % 3 == 0 || nombre % 5 == 0
end

# Méthode pour trouver les multiples de 3 et 5 jusqu'à une limite donnée
def find_multiples(limite)
  multiples = []
  somme = 0

  (1..limite).each do |i|
    if is_multiple_of_3_or_5?(i)
      multiples << i
      somme += i
    end
  end

  return multiples, somme
end
puts find_multiples(10)

