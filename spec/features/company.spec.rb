
require 'rails_helper'
RSpec.feature "Company management function", type: :feature do
 background do
  Company.create!(email:'alu@gmail.com',password:'alu123',username:'African Leadership University',location:'Kacyiru/Kigali',description:'alu')
   visit  new_company_session_path
   fill_in  'Email' ,  :with => 'alu@gmail.com'  
   fill_in  'Password' ,  :with => 'alu123'
   click_on  'Log in'
 end 	

 scenario "Test of company creation" do
  Company.create!(email:'kct@gmail.com',password:'kct123',username:'Kigali City Tower',location:'Kacyiru/Kigali',description:'kct')
   company=Company.last
   expect(company.username).to match("Kigali City Tower")
 end

 scenario "Test company details" do
  Company.create!(email:'kct@gmail.com',password:'kct123',username:'Kigali City Tower',location:'Kacyiru/Kigali',description:'kct')
   @copmany = Company.last
   visit companies_path()
   expect(page).to have_content('alu@gmail.com')
 end  

end


