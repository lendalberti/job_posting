
User.delete_all 
Category.delete_all 
Status.delete_all 
Job.delete_all 

User.create!( first_name: 'Moe',  last_name: 'Howard', email: 'mh@yahoo.com', phone: '617.555.1212' )  
User.create!( first_name: 'Larry',  last_name: 'Fine', email: 'lf@gmail.com', phone: '617.555.2323' )  
User.create!( first_name: 'Curly',  last_name: 'Howard', email: 'ch@yahoo.com', phone: '617.555.1212' )  
User.create!( first_name: 'Groucho',  last_name: 'Marx', email: 'gm@marxbro.com', phone: '617.555.1212' )  
User.create!( first_name: 'Chico',  last_name: 'Marx', email: 'cm@marxbro.com', phone: '617.555.1213' )  
User.create!( first_name: 'Harpo',  last_name: 'Marx', email: 'hm@marxbro.com', phone: '617.555.1214' )  
User.create!( first_name: 'Zeppo',  last_name: 'Marx', email: 'zm@marxbro.com', phone: '617.555.1215' )  
                
Category.create!( name: 'Landscaping')  
Category.create!( name: 'BabySitting')  
Category.create!( name: 'HouseCleaning')  

Status.create!( name: 'New')  
Status.create!( name: 'Pending')  
Status.create!( name: 'Complete')  

      # t.integer  :user_id,     null: false
      # t.integer  :category_id, null: false
      # t.string   :location,    null: false
      # t.integer  :status_id,   null: false

Job.create!( user_id: 2, category_id: 1, location: 'Mass Ave, Cambridge', status_id: 1, description: 'job posting description goes here')
Job.create!( user_id: 1, category_id: 2, location: 'South Station, Boston', status_id: 2, description: 'job posting description goes here')
Job.create!( user_id: 3, category_id: 3, location: '100 Milk St, Cambridge', status_id: 1, description: 'job posting description goes here')
Job.create!( user_id: 7, category_id: 3, location: '250 Alpine Lane, Boston', status_id: 3, description: 'job posting description goes here')
Job.create!( user_id: 4, category_id: 2, location: '4 Peterboro St, Boston', status_id: 1, description: 'job posting description goes here')
Job.create!( user_id: 6, category_id: 1, location: '566 Portland St, Boston', status_id: 3, description: 'job posting description goes here')
Job.create!( user_id: 3, category_id: 2, location: '123 Essex St, Cambridge', status_id: 2, description: 'job posting description goes here')
Job.create!( user_id: 2, category_id: 3, location: '200 Kneeland St, Boston', status_id: 1, description: 'job posting description goes here')
Job.create!( user_id: 2, category_id: 1, location: '324 Alpine St, Boston', status_id: 3, description: 'job posting description goes here')
Job.create!( user_id: 5, category_id: 1, location: '445 Bedford St, Cambridge', status_id: 2, description: 'job posting description goes here')
Job.create!( user_id: 5, category_id: 2, location: '3 Alpine St, Boston', status_id: 2, description: 'job posting description goes here')
Job.create!( user_id: 6, category_id: 1, location: '122 Portland St, Boston', status_id: 2, description: 'job posting description goes here')
Job.create!( user_id: 7, category_id: 3, location: '765 Bedford St, Boston', status_id: 3, description: 'job posting description goes here')
Job.create!( user_id: 3, category_id: 2, location: '4566 Alpine St, Boston', status_id: 3, description: 'job posting description goes here')
Job.create!( user_id: 1, category_id: 2, location: '1100 Portland St, Boston', status_id: 3, description: 'job posting description goes here')
Job.create!( user_id: 1, category_id: 3, location: '34 Kneeland St, Cambridge', status_id: 1, description: 'job posting description goes here')
Job.create!( user_id: 4, category_id: 3, location: '220 Alpine St, Boston', status_id: 2, description: 'job posting description goes here')
Job.create!( user_id: 5, category_id: 3, location: '44 Portland St, Cambridge', status_id: 1, description: 'job posting description goes here')
Job.create!( user_id: 3, category_id: 2, location: '5678 Alpine St, Cambridge', status_id: 2, description: 'job posting description goes here')
Job.create!( user_id: 4, category_id: 1, location: '55 Bedford St, Boston', status_id: 3, description: 'job posting description goes here')
Job.create!( user_id: 4, category_id: 1, location: '96 Kneeland St, Cambridge', status_id: 1, description: 'job posting description goes here')

