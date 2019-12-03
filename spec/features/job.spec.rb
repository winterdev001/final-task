require 'rails_helper'

RSpec.feature "Job management function", type: :feature do
  background do
    Company.create!(email:'alu@gmail.com',password:'alu123',username:'African Leadership University',location:'Kacyiru/Kigali',description:'alu')
    @company = Company.first
   Job.create!(title: "Web Developer", deadline: '2019-12-5 1:40:00',  amount: '20', job_type:'Fulltime', location:'kigali',remote:'online',description:'web developer',company_id: @company.id)
  end
 
  scenario "Test of all available jobs" do
    visit jobs_path
    
    expect(page).to have_content 'Web Developer'
  end

  scenario "Test of Job creation" do
    @company=Company.first
    Job.create!(title: "Web Developer", deadline: '2019-12-5 1:40:00',  amount: '20', job_type:'Fulltime', location:'kigali',remote:'online',description:'web developer',company_id: @company.id)
    visit jobs_path
    expect(page).to have_content 'Web Developer'
  end

  scenario "Test of Job details" do
    job = Job.first  
  end
  
end

