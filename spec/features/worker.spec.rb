
require 'rails_helper'
RSpec.feature "Worker management function", type: :feature do
 background do
   Worker.create!(email:'alan@gmail.com',password:'alan123',username:'Alan',location:'Kacyiru/Kigali',skills:'web developer',hourly_rate:'25',description:'web developer',)
   visit  new_worker_session_path
   fill_in  'Email' ,  :with => 'alan@gmail.com'  
   fill_in  'Password' ,  :with => 'alan123'
   click_on  'Log in'
 end 	

 scenario "Test of worker creation" do
   Worker.create!(email:'dev@gmail.com',password:'dev123',username:'dev',location:'Kacyiru/Kigali',skills:'web developer',hourly_rate:'25',description:'web developer',)
   worker=Worker.last
   expect(worker.username).to match("dev")
 end

 scenario "Test worker details" do
   Worker.create!(email:'dev@gmail.com',password:'dev123',username:'dev',location:'Kacyiru/Kigali',skills:'web developer',hourly_rate:'25',description:'web developer')
   @worker = Worker.last
   visit workers_path()
   expect(page).to have_content('alan@gmail.com')
 end 

  scenario "Test of Workers list" do
   worker=Worker.all
   assert worker   
   expect(page ).to  have_content  'alan'
 end

end


