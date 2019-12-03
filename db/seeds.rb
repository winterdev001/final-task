# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Company.create!(email:'alu@gmail.com',password:'alu123',location:'Kacyiru/Kigali',description:'African Leadership University')
# Company.create!(email:'kct@gmail.com',password:'kct123',location:'Town/Kigali',description:'Kigali City Tower')
# Company.create!(email:'acgroup@gmail.com',password:'alu123',location:'Kacyiru/Kigali',description:'alu')
# Company.create!(email:'alu@gmail.com',password:'alu123',location:'Kacyiru/Kigali',description:'alu')
# Company.create!(email:'alu@gmail.com',password:'alu123',location:'Kacyiru/Kigali',description:'alu')
# Company.create!(email:'alu@gmail.com',password:'alu123',location:'Kacyiru/Kigali',description:'alu')
# Company.create!(email:'alu@gmail.com',password:'alu123',location:'Kacyiru/Kigali',description:'alu')
# Company.create!(email:'alu@gmail.com',password:'alu123',location:'Kacyiru/Kigali',description:'alu')
# Company.create!(email:'alu@gmail.com',password:'alu123',location:'Kacyiru/Kigali',description:'alu')
# Company.create!(email:'alu@gmail.com',password:'alu123',location:'Kacyiru/Kigali',description:'alu')
# Company.create!(email:'alu@gmail.com',password:'alu123',location:'Kacyiru/Kigali',description:'alu')
# Worker.create!(email:'dev@gmail.com',password:'dev123',location:'Kacyiru/Kigali',skills:'web developer',hourly_rate:'25',description:'web developer')
# Worker.create!(email:'dev@gmail.com',password:'dev123',location:'Kacyiru/Kigali',skills:'web developer',hourly_rate:'25',description:'web developer')
# Worker.create!(email:'dev@gmail.com',password:'dev123',location:'Kacyiru/Kigali',skills:'web developer',hourly_rate:'25',description:'web developer')
# Worker.create!(email:'dev@gmail.com',password:'dev123',location:'Kacyiru/Kigali',skills:'web developer',hourly_rate:'25',description:'web developer')
# Worker.create!(email:'dev@gmail.com',password:'dev123',location:'Kacyiru/Kigali',skills:'web developer',hourly_rate:'25',description:'web developer')
# Worker.create!(email:'dev@gmail.com',password:'dev123',location:'Kacyiru/Kigali',skills:'web developer',hourly_rate:'25',description:'web developer')
# Worker.create!(email:'dev@gmail.com',password:'dev123',location:'Kacyiru/Kigali',skills:'web developer',hourly_rate:'25',description:'web developer')
# Worker.create!(email:'dev@gmail.com',password:'dev123',location:'Kacyiru/Kigali',skills:'web developer',hourly_rate:'25',description:'web developer')
# Worker.create!(email:'dev@gmail.com',password:'dev123',location:'Kacyiru/Kigali',skills:'web developer',hourly_rate:'25',description:'web developer')
# Worker.create!(email:'dev@gmail.com',password:'dev123',location:'Kacyiru/Kigali',skills:'web developer',hourly_rate:'25',description:'web developer')
# Worker.create!(email:'dev@gmail.com',password:'dev123',location:'Kacyiru/Kigali',skills:'web developer',hourly_rate:'25',description:'web developer')
# Worker.create!(email:'dev@gmail.com',password:'dev123',location:'Kacyiru/Kigali',skills:'web developer',hourly_rate:'25',description:'web developer')
Administrator.create!(email:"admin2@gmail.com",password:"admin123",admin:true)

1.upto(5) do |num|                                                   
    Company.create!(email:"alu#{num}@gmail.com",password:"alu123#{num}",username:"Alu#{num}",location:"Kacyiru#{num}/Kigali",description:"African Leadership University#{num}")       
end   

1.upto(5) do |num|                                                  
    Worker.create!(email:"dev#{num}@gmail.com",password:"dev123#{num}",location:"Kicukiro#{num}/Kigali",skills:"web developer",hourly_rate:"2#{num}",description:"web developer")       
end  

1.upto(12) do |num|                                                   
    Job.create!(title: "Software Developer", deadline: "2019-12-1#{num} 1:40:00",  amount: "2#{num}", job_type:"2", location:"kigali#{num}",remote:"1",description:"web developer",company_id:"#{(1..5).rand}")       
end  


   