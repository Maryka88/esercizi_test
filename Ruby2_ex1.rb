elementi = {
    :H => "idrogeno",
    :O => "ossigeno",
    :Na => "sodio",
    :Cl => "cloro",
    :He => "elio",
    :K => "potassio",
    :C => "carbonio",
    :Ca => "calcio",
    :Fl => "fluoro",
    :Zn => "zinco",
    :N => "azoto"
}

puts elementi


elementi.each do |simb, nome|
  puts "L'elemento #{nome} ha come simbolo #{simb}."
end

puts "Nella tabella ci sono #{elementi.length} elementi."

puts elementi.include? :O
puts elementi.include? :Ne
puts elementi.has_key? :O
puts elementi.has_key? :Ne
puts elementi.has_value? "ossigeno"
puts elementi.has_value? "neon"

pattern = /(?i)o/
formula = "H2O"

puts pattern
puts "H2O" =~ pattern
