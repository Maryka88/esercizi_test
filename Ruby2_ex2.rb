pattern_targa = /^[A-Z]{2}[0-9]{3}[A-Z]{2}/
targa = "AK550LE"
frase = "La mia targa e' AK550LE"

puts pattern_targa
puts targa =~ pattern_targa
puts frase =~ pattern_targa

pattern_targa = /^[A-Z]{2}[0-9]{3}[A-Z]{2}|^[A-Z]{2}[0-9]{5}[A-Z]|^[A-Z]{3}[0-9]{5}/;targa1 = "TO11237A"
targa2 = "TOA11237"

puts targa1 =~ pattern_targa
puts targa2 =~ pattern_targa
puts targa =~ pattern_targa


CF = "GRFNDR78A16K221F"
CF2 = "GRNDR78A16K221F"

pattern_CF = /[A-Z]{6}[0-9]{2}[A-Z][0-9]{2}[A-Z][0-9]{3}[A-Z]/
targa1 = "TO11237A"
targa2 = "TOA11237"

puts CF =~ pattern_CF
puts CF2 =~ pattern_CF

frase= "Il mio codice fiscale e' GRFNDR78A16K221F "
puts frase =~ pattern_CF
codice = $~.to_s
# puts codice

print frase + "e sono "
puts "una donna." if codice[9]>"3"
puts "un uomo." if codice[9]<="3"


pattern_viagra = /v[i!1][a@]gr[a@]/

frase= "Vuoi comprare del v!@gra?"

puts "Hai scritto viagra!" if frase =~ pattern_viagra



pattern_IP = /192\.168\.1\.\d{1,3}/

IP = "192.168.1.112"

puts IP =~ pattern_IP
