class String
  define_method(:coin) do
    remainder = self.to_i()
    output = ""
    if (quarters = remainder./(25).floor()) > 0
      output = quarters.to_s().concat(" quarters")
      if (remainder = remainder.%(25)) == 0
        return output
      else (output = output.concat(", "))
      end
    end

    if (dimes = remainder./(10).floor()) > 0
      output = output.concat(dimes.to_s().concat(" dimes"))
      if (remainder = remainder.%(10)) == 0
        return output
      else (output = output.concat(", "))
      end
    end
    if (nickels = remainder./(5).floor()) > 0
      output = output.concat(nickels.to_s().concat(" nickels"))
      if (remainder = remainder.%(5)) == 0
        return output
      else (output == output.concat(", "))
      end
    end

    output = output.concat(remainder.to_s().concat(" pennies"))
#    pennies = self.%(1).to_s()
#    output = pennies.concat(" pennies")
  end
end
