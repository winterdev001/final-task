require 'rails_helper'

RSpec.feature "Comment management function", type: :feature do
  background do
    Company.create!(email:'alu@gmail.com',password:'alu123',username:'African Leadership University',location:'Kacyiru/Kigali',description:'alu')
    Worker.create!(email:'alan@gmail.com',password:'alan123',username:'Alan',location:'Kacyiru/Kigali',skills:'web developer',hourly_rate:'25',description:'web developer',)
    @company = Company.first
    @Worker = Worker.first
   Comment.create!(content: "Web Developer",company_id: @company.id, worker_id: @Worker.id)
  end
 
  scenario "Test of all created comment" do
    visit company_path(@company.id)
    
    expect(page).to have_content 'Web Developer'
  end

  scenario "Test of comment creation" do
    @company=Company.first
    @Worker = Worker.first
    Comment.create!(content: "Web Developer",company_id: @company.id,worker_id: @Worker.id)
    visit company_path(@company.id)
    expect(page).to have_content 'Web Developer'
  end
  
end

