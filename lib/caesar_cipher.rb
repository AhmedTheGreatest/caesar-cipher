def caesar_cipher(text, factor)
  # For each character in the text run the following block
  char_array = text.split("").map do |char|
    # Relative position of the character
    relative_pos = 0

    # If character is a capital letter
    if char.ord >= "A".ord && char.ord <= "Z".ord
      # Get the relative position of the character
      relative_pos = char.ord - "A".ord
      # Calculate the new character
      (((relative_pos + factor) % 26) + "A".ord).chr
    # If character is lower-case letter
    elsif char.ord >= "a".ord && char.ord <= "z".ord
      # Get the relative position of the character
      relative_pos = char.ord - "a".ord
      # Calculate the new character
      (((relative_pos + factor) % 26) + "a".ord).chr
    else
      # If the character is not a capital or lower-case letter just return the letter
      char
    end
  end
  char_array.join
end

# Ciphers the string by the shift factor of 5 and prints it
# puts caesar_cipher("What a string!", 5)
