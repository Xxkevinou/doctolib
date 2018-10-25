require 'date'

3.times do |index|
 speciality = Speciality.create!(name: "Specialité#{index}")
end

5.times do |index|
 city = City.create!(name: "Ville#{index}")
end

5.times do |index|
  doctor = Doctor.create!(first_name: "Prénom#{index}", last_name: "Nom#{index}@example.com", postal_code: index, city_id: City.all.ids.sample) 
end

5.times do |index|
 patient = Patient.create!(first_name: "Prénom#{index}", last_name: "Nom#{index}@example.com", city_id: City.all.ids.sample)
end


3.times do |index|
	appo = Appo.create!(datetime: DateTime.new(2001,2,3,4,5,6), doctors_id: Doctor.all.ids.sample, patients_id: Patient.all.ids.sample, city_id: City.all.ids.sample)
end

Doctor.all.each do |doctor|
    tab = Array.new
    Random.new.rand(1..3).times do
        tab << [Speciality.find(Speciality.all.ids.sample)]
    end
    doctor = tab
end