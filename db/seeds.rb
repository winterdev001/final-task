# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

1.upto(5) do |num|                                                   
    Company.create!(email:"alu#{num}@gmail.com",password:"alu123#{num}",username:"Alu#{num}",location:"Kacyiru#{num}/Kigali",description:"African Leadership University#{num}")       
end   

1.upto(5) do |num|                                                  
    Worker.create!(email:"dev#{num}@gmail.com",password:"dev123#{num}",username: "winter#{num}",location:"Kicukiro#{num}/Kigali",skills:"web developer",hourly_rate:"2#{num}",description:"web developer")       
end  

1.upto(12) do |num|                                                   
    Job.create!(title: "Software Developer", deadline: "2019-12-1#{num} 1:40:00",  amount: "2#{num}", job_type:"Fulltime", location:"kigali#{num}",remote:"1",description:"web developer",company_id:1)       
end  

Administrator.create!(email:"admin2@gmail.com",password:"admin123",admin:true)

   