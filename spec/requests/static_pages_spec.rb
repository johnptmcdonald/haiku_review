require 'rails_helper'


describe "Static pages" do

  	describe "Home page" do
    	it "should have the content 'Welcome'" do
      		visit '/'
      		expect(page).to have_content('Welcome')
		end 

		it "should have the title 'Home'" do
      		visit '/'
      		expect(page).to have_title('Home')
		end 

		it "should have the right title" do
			visit 'static_pages/home'
			expect(page).to have_title("Ruby on Rails | Home")
		end
	end

	describe "Help page" do
<<<<<<< HEAD
		it "should have the content 'Help'" do 
			visit 'static_pages/help'
			expect(page).to have_content('Help')
		end

		it "should have the right title" do
			visit 'static_pages/help'
			expect(page).to have_title("Ruby on Rails | Help")
		end
=======
		it "should have the content 'Help'" do
			visit '/help'
			expect(page).to have_content('Help')
		end

		it "should have the title 'Help'" do
      		visit '/help'
      		expect(page).to have_title('Help')
		end 
>>>>>>> filling-in-layout

	end

	describe "About Us page" do
		it "should have the content 'About Us'" do
			visit '/about'
			expect(page).to have_content('About Us')
		end

<<<<<<< HEAD
		it "should have the right title" do
			visit 'static_pages/about'
			expect(page).to have_title("Ruby on Rails | About Us")
		end
=======
		it "should have the title 'About'" do
      		visit '/about'
      		expect(page).to have_title('About')
		end 
>>>>>>> filling-in-layout
	end

end