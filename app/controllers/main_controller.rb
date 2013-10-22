class MainController < ApplicationController
  def index
    render :text=>"Hello! This is the ORM Lab. You must have the environment running."
  end
  
  def add_records
    #************************************************************
    #        DO NOT RUN THIS METHOD FROM THE BROWSER
    #               FOLLOW STEPS IN THE LAB
    #************************************************************
    
    
    Customer.create(:name => 'John Doe', :email => "john@doe.com" , :balance => 78.29)
    Customer.create(:name => 'Bert Public' , :email => "b@public.net" , :balance => 12.45)

    wilma = Manager.create(:name => 'Wilma Flint' , :email => "wilma@here.com" , :dept => 23)
    barney = Employee.new(:name => 'Barney Rubble' , :email => "barney@here.com" , :dept => 23)
    
    barney.boss=wilma
    barney.save!

  end
end
