def caesar_cipher(string, key)
  result = ""
  string.each_char do |char|
    if char =~ /[a-zA-Z]/
      shift = (char =~ /[A-Z]/) ? 65 : 97
      result += (((char.ord - shift + key) % 26) + shift).chr
    else
      result += char
    end
  end
  return result
end

# Exemple d'utilisation
puts caesar_cipher("What a string!", 5)  # Output: "Bmfy f xywnsl!"

