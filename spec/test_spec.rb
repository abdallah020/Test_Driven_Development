# test_spec.rb

require_relative '../lib/text'

describe "la fonction find_multiples" do
  it "doit renvoyer TRUE quand un entier est un multiple de 3 ou de 5" do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)
    expect(is_multiple_of_3_or_5?(5)).to eq(true)
    expect(is_multiple_of_3_or_5?(51)).to eq(true)
    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end

  it "doit renvoyer FALSE quand un entier n'est PAS un multiple de 3 ou de 5" do
    # Écrivez vos tests ici
    # On ignore si ce n'est pas multiple_de_3_ou_5?
  end

  it "doit calculer la somme des multiples de 3 et 5 jusqu'à la limite" do
    # Cet exemple vérifie si la somme est calculée correctement
    expect(find_multiples(10)[1]).to eq(33) # 3 + 5 + 6 + 9 = 23
  end
end

