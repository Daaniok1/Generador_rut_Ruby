#rut de 8 digitos
#Primero se definen los 8 primeros digitos del rut (los que deberan comenzar con 1 o 2)
inicio = %w{1 2}
rut = inicio[rand(inicio.length)]
7.times do 
	num = rand(10)
	rut = "#{rut}#{num}"
end
#se guarda en una variable los numeros del rut
numeros = rut

#luego se calcula el digito verificador del rut para así generar un rut válido
suma = 0
mul  = 2

rut = rut.to_s.reverse.split('')
rut.each do |run|
	if mul == 8
		mul = 2
	end
	suma += run.to_i * mul
	mul += 1

end

suma = 11- (suma % 11)

if suma == 11 
	verificador = 0
elsif suma == 10
	verificador = 'K'
else
	verificador = suma
end

puts "#{numeros}-#{verificador}"