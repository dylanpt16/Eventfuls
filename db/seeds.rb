# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
User.create({username: 'guest', password: 'foobar'})
User.create({username: 'guest1', password: 'foobar', name: "Drake Snow"})
User.create({username: 'guest2', password: 'foobar', name: "Monica Trevino"})
User.create({username: 'guest3', password: 'foobar', name: "Brooks Carney"})
User.create({username: 'guest4', password: 'foobar', name: "Kaylin Lynch"})
User.create({username: 'guest5', password: 'foobar', name: "Mathias Stewart"})
User.create({username: 'guest6', password: 'foobar', name: "Lilah Roberts"})
User.create({username: 'guest7', password: 'foobar', name: "Brock Hester"})
User.create({username: 'guest8', password: 'foobar', name: "Erik Patterson"})
User.create({username: 'guest9', password: 'foobar', name: "Alisa Crosby"})
User.create({username: 'guest10', password: 'foobar', name: "Kristen Erickson"})
User.create({username: 'guest11', password: 'foobar', name: "Yaritza Finley"})
User.create({username: 'guest12', password: 'foobar', name: "Orlando Tyler"})
User.create({username: 'guest13', password: 'foobar', name: "Karsyn Yates"})
User.create({username: 'guest14', password: 'foobar', name: "Myah Houston"})
User.create({username: 'guest15', password: 'foobar', name: "Raquel Walters"})
User.create({username: 'guest16', password: 'foobar', name: "Ramiro Walls"})
User.create({username: 'guest17', password: 'foobar', name: "Humberto Evans"})
User.create({username: 'guest18', password: 'foobar', name: "Gaige Morton"})
User.create({username: 'guest19', password: 'foobar', name: "Salvador Cabrera"})
User.create({username: 'guest20', password: 'foobar', name: "Jordan Tucker"})
User.create({username: 'guest21', password: 'foobar', name: "Lewis Mckenzie"})
User.create({username: 'guest22', password: 'foobar', name: "Madilyn Tran"})
User.create({username: 'guest23', password: 'foobar', name: "Stacy Orozco"})
User.create({username: 'guest24', password: 'foobar', name: "Jaslyn Pearson"})
User.create({username: 'guest25', password: 'foobar', name: "Trent Clay"})
User.create({username: 'guest26', password: 'foobar', name: "Drew Glover"})
User.create({username: 'guest27', password: 'foobar', name: "Antonio Bryant"})
User.create({username: 'guest28', password: 'foobar', name: "Valerie Cross"})
User.create({username: 'guest29', password: 'foobar', name: "Cloe Kramer"})
User.create({username: 'guest30', password: 'foobar', name: "Blake Padilla"})
User.create({username: 'guest31', password: 'foobar', name: "Kaylyn Hooper"})
User.create({username: 'guest32', password: 'foobar', name: "Jairo Moses"})
User.create({username: 'guest33', password: 'foobar', name: "Kamora Parker"})
User.create({username: 'guest34', password: 'foobar', name: "Lyric Cameron"})
User.create({username: 'guest35', password: 'foobar', name: "Jadiel Graham"})
User.create({username: 'guest36', password: 'foobar', name: "Nigel Randolph"})
User.create({username: 'guest37', password: 'foobar', name: "Quentin Barrera"})
User.create({username: 'guest38', password: 'foobar', name: "Barbara Simpson"})
User.create({username: 'guest39', password: 'foobar', name: "Sam Lucas"})
User.create({username: 'guest40', password: 'foobar', name: "Ashleigh Santana"})

Event.destroy_all
Event.create({
  name: 'Introduction to Microsoft Visual Studio Team Services with Andrew Cook',
  description: 'Years ago when deploying software you would have to follow a tedious multistep process. A process which would fail under the smallest of errors and inevitably there were errors. Luckily today there are tools to automate not old the deployment process but also the build process. This allows teams and individuals to setup and use continuous integration and continuous deployment. We’ll explore setting up a Git repository, automating builds and deployments from that repository, setting up project work and bug tracking, and creating load tests to measure performance. Microsoft Visual Studio Team Services (https://docs.microsoft.com/en-us/vsts/user-guide/what-is-vsts) is a cloud service for collaborating on code development. It provides an integrated set of features that you access through your web browser or IDE client, including: Git repositories for source control of your codeBuild and release management to support continuous integration and delivery of your apps. Agile tools to support planning and tracking your work, code defects, and issues using Kanban and Scrum methods. A variety of tools to test your apps, including manual/exploratory testing, load testing, and continuous testing. Highly customizable dashboards for sharing progress and trends. Built-in wiki for sharing information with your team.',
  owner_id: 1,
  lat: 47.61593058326686,
  lng: -122.29035708540039,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1518490458/eventfuls/aobl5pu1dxx7nhiavbow.png",
  date: DateTime.new(2018,2,3,4,5,6)})

Event.create({
  name: 'NSCoder Night (Wayward Coffeehouse, Seattle)',
  description: 'NSCoder Night is held every Tuesday evening at Wayward Coffeehouse. It is an informal gathering of Mac and iOS application developers where people can code, talk shop, ask and answer questions, and find some willing victims for project demonstrations. There is no program, and there is a wide range of experience levels. You will find us spread over several tables in the back. We are generally there from about 7 until about 10, with people dropping in all through the evening. No RSVP is needed for this event. It is very informal. Everyone is welcome for all or part of the evening. Bring your MacBook and your iOS or Mac applications in development. Experience levels vary from raw beginner to seasoned expert, and attendance is typically 10 to 20 people.',
  owner_id: 2,
  lat: 47.60204276830558,
  lng: -122.29670855634765,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1517614425/eventfuls/1_iW7i51bEZSnoPwGgWW93Kg.jpg",
  date: DateTime.new(2018,3,3,4,5,6)})

Event.create({
  name: 'WordPress Developers (restarting for 2018!): Advanced Custom Fields deep-dive',
  description: 'We are relaunching the WordPress Developer meetup. Join us on March 13th at WeWork in South Lake Union to get into the code side of WordPress, from plugins, to themes, and beyond. Learn something new, network with your fellow developers, share what you’d like to see at the next Developer Meetup, and help us build a better WordPress developer community here in Seattle. Healthy websites change over time just like healthy businesses do. As developers, it is our job to empower website admins, and make our sites more maintainable. This talk shares design patterns and best practices you will find invaluable when creating custom themes for clients, and demonstrates how to implement them using Advanced Custom Fields (ACF). ACF is a powerful development tool used to easily manage custom fields and data. Since the possibilities are endless, we will explore a handful of specific examples.',
  owner_id: 3,
  lat: 47.61847628267118,
  lng: -122.29859683149414,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1518663169/eventfuls/imbf9ozrndsmiyb1yn6v.png",
  date: DateTime.new(2018,4,3,4,5,6)})

Event.create({
  name: 'NEW! Software Craftsmanship - Eastside',
  description: 'MicroObject Development is an approach to Object Oriented Programming with Single Responsibility as the core principle guiding principle for how behavior is encapsulated. This core principle is supported by Encapsulation, Behavior, and Immutability. Along with how microObjects uses these principles, Quinn will talk about hands-on-keyboard practices that he and other developers use to produce simple, maintainable, and easily testable code.',
  owner_id: 1,
  lat: 47.61222752651438,
  lng: -122.3046049796875,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1520989479/profile_event.png",
  date: DateTime.new(2018,5,3,4,5,6)})

Event.create({
  name: 'Webinar - Excel and Power BI Clinic)',
  description: 'FREE Excel & Power BI Clinic - Solving real world Excel and Power BI Problems occurs every third Thursday of each month from 9am to 10am Central African Time (CAT). Please register for the date and time that works best for you: Get your (on the Job) Excel & Power BI questions ready for our monthly live Clinic. David is a Power Pivot, DAX, Excel and Financial Modelling guru, he is also an ATD Master Trainer. He has taught over 4000 participants in the past 22 years of working with Excel and now also working Power BI since its beta launch as Power Pivot in Excel 2010. Learn how to apply Excel & Power BI tools to solve real-world challenges you face at work. This is distinct from the IT-centric approach to solving problems. Excel and Power BI are productivity tools afterall and not just IT software. Spaces are limited, so book your spot today and get your questions ready. This webinar runs every month. After registering, you will receive a confirmation email containing information about joining the webinar.',
  owner_id: 2,
  lat: 47.60285299212841,
  lng: -122.31095645063476,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1520989610/profile_event2.png",
  date: DateTime.new(2018,6,3,4,5,6)})

Event.create({
  name: 'Tech Happy Hour',
  description: 'Complete your Thursday with Tech Happy Hour! Enjoy food from different culture & mingle with our growing TECH community. ENJOY, LEARN & CELEBRATE THE DIFFERENCE ! ABOUT OUR TECH FRIENDLY COMMUNITY extraSlice is more than just a co-working space, it’s a Tech Innovation Place that embraces 3Cs – Community. Culture. Collaboration . Our purpose is to create an environment that allows you to focus on what’s really important, getting your work done, meet interesting people and learning. All these in one place!',
  owner_id: 3,
  lat: 47.61199607676047,
  lng: -122.31095645063476,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1520989689/profile_event3.png",
  date: DateTime.new(2018,7,3,4,5,6)})

Event.create({
  name: 'Hack Night @ ATLAS Workbase',
  description: 'Beginner or experienced developer, come join us at ATLAS Workbase to work on whatever coding project you would like to work on. If you are looking for some guidance, we will try to help you with that too!',
  owner_id: 1,
  lat: 47.60551506776583,
  lng: -122.31473300092773,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1518490458/eventfuls/aobl5pu1dxx7nhiavbow.png",
  date: DateTime.new(2018,8,3,4,5,6)})

Event.create({
  name: 'Introduction to Microsoft Visual Studio Team Services with Andrew Cook 2',
  description: 'Years ago when deploying software you would have to follow a tedious multistep process. A process which would fail under the smallest of errors and inevitably there were errors. Luckily today there are tools to automate not old the deployment process but also the build process. This allows teams and individuals to setup and use continuous integration and continuous deployment. We’ll explore setting up a Git repository, automating builds and deployments from that repository, setting up project work and bug tracking, and creating load tests to measure performance. Microsoft Visual Studio Team Services (https://docs.microsoft.com/en-us/vsts/user-guide/what-is-vsts) is a cloud service for collaborating on code development. It provides an integrated set of features that you access through your web browser or IDE client, including: Git repositories for source control of your codeBuild and release management to support continuous integration and delivery of your apps. Agile tools to support planning and tracking your work, code defects, and issues using Kanban and Scrum methods. A variety of tools to test your apps, including manual/exploratory testing, load testing, and continuous testing. Highly customizable dashboards for sharing progress and trends. Built-in wiki for sharing information with your team.',
  owner_id: 1,
  lat: 47.66667542029996,
  lng: -122.32547934147533,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1518490458/eventfuls/aobl5pu1dxx7nhiavbow.png",
  date: DateTime.new(2018,2,3,4,5,6)})

Event.create({
  name: 'NSCoder Night (Wayward Coffeehouse, Seattle 2)',
  description: 'NSCoder Night is held every Tuesday evening at Wayward Coffeehouse. It is an informal gathering of Mac and iOS application developers where people can code, talk shop, ask and answer questions, and find some willing victims for project demonstrations. There is no program, and there is a wide range of experience levels. You will find us spread over several tables in the back. We are generally there from about 7 until about 10, with people dropping in all through the evening. No RSVP is needed for this event. It is very informal. Everyone is welcome for all or part of the evening. Bring your MacBook and your iOS or Mac applications in development. Experience levels vary from raw beginner to seasoned expert, and attendance is typically 10 to 20 people.',
  owner_id: 2,
  lat: 47.66112612941765,
  lng: -122.34813864323314,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1517614425/eventfuls/1_iW7i51bEZSnoPwGgWW93Kg.jpg",
  date: DateTime.new(2018,3,3,4,5,6)})

Event.create({
  name: 'WordPress Developers (restarting for 2018!) 2: Advanced Custom Fields deep-dive',
  description: 'We are relaunching the WordPress Developer meetup. Join us on March 13th at WeWork in South Lake Union to get into the code side of WordPress, from plugins, to themes, and beyond. Learn something new, network with your fellow developers, share what you’d like to see at the next Developer Meetup, and help us build a better WordPress developer community here in Seattle. Healthy websites change over time just like healthy businesses do. As developers, it is our job to empower website admins, and make our sites more maintainable. This talk shares design patterns and best practices you will find invaluable when creating custom themes for clients, and demonstrates how to implement them using Advanced Custom Fields (ACF). ACF is a powerful development tool used to easily manage custom fields and data. Since the possibilities are endless, we will explore a handful of specific examples.',
  owner_id: 3,
  lat: 47.66424767812699,
  lng: -122.32153112980541,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1518663169/eventfuls/imbf9ozrndsmiyb1yn6v.png",
  date: DateTime.new(2018,4,3,4,5,6)})

Event.create({
  name: 'NEW! Software Craftsmanship - Eastside 2',
  description: 'MicroObject Development is an approach to Object Oriented Programming with Single Responsibility as the core principle guiding principle for how behavior is encapsulated. This core principle is supported by Encapsulation, Behavior, and Immutability. Along with how microObjects uses these principles, Quinn will talk about hands-on-keyboard practices that he and other developers use to produce simple, maintainable, and easily testable code.',
  owner_id: 1,
  lat: 47.669449844521644,
  lng: -122.33526403996166,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1520989479/profile_event.png",
  date: DateTime.new(2018,5,3,4,5,6)})

Event.create({
  name: 'Webinar - Excel and Power BI Clinic 2)',
  description: 'FREE Excel & Power BI Clinic - Solving real world Excel and Power BI Problems occurs every third Thursday of each month from 9am to 10am Central African Time (CAT). Please register for the date and time that works best for you: Get your (on the Job) Excel & Power BI questions ready for our monthly live Clinic. David is a Power Pivot, DAX, Excel and Financial Modelling guru, he is also an ATD Master Trainer. He has taught over 4000 participants in the past 22 years of working with Excel and now also working Power BI since its beta launch as Power Pivot in Excel 2010. Learn how to apply Excel & Power BI tools to solve real-world challenges you face at work. This is distinct from the IT-centric approach to solving problems. Excel and Power BI are productivity tools afterall and not just IT software. Spaces are limited, so book your spot today and get your questions ready. This webinar runs every month. After registering, you will receive a confirmation email containing information about joining the webinar.',
  owner_id: 2,
  lat: 47.67255449415725,
  lng: -122.30804443359375,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1520989610/profile_event2.png",
  date: DateTime.new(2018,6,3,4,5,6)})

Event.create({
  name: 'Tech Happy Hour 2',
  description: 'Complete your Thursday with Tech Happy Hour! Enjoy food from different culture & mingle with our growing TECH community. ENJOY, LEARN & CELEBRATE THE DIFFERENCE ! ABOUT OUR TECH FRIENDLY COMMUNITY extraSlice is more than just a co-working space, it’s a Tech Innovation Place that embraces 3Cs – Community. Culture. Collaboration . Our purpose is to create an environment that allows you to focus on what’s really important, getting your work done, meet interesting people and learning. All these in one place!',
  owner_id: 3,
  lat: 47.65916061409923,
  lng: -122.33114416691478,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1520989689/profile_event3.png",
  date: DateTime.new(2018,7,3,4,5,6)})

Event.create({
  name: 'Hack Night @ ATLAS Workbase 2',
  description: 'Beginner or experienced developer, come join us at ATLAS Workbase to work on whatever coding project you would like to work on. If you are looking for some guidance, we will try to help you with that too!',
  owner_id: 1,
  lat: 47.67037461982262,
  lng: -122.31432135197338,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1518490458/eventfuls/aobl5pu1dxx7nhiavbow.png",
  date: DateTime.new(2018,8,3,4,5,6)})
Event.create({
  name: 'Introduction to Microsoft Visual Studio Team Services with Andrew Cook 3',
  description: 'Years ago when deploying software you would have to follow a tedious multistep process. A process which would fail under the smallest of errors and inevitably there were errors. Luckily today there are tools to automate not old the deployment process but also the build process. This allows teams and individuals to setup and use continuous integration and continuous deployment. We’ll explore setting up a Git repository, automating builds and deployments from that repository, setting up project work and bug tracking, and creating load tests to measure performance. Microsoft Visual Studio Team Services (https://docs.microsoft.com/en-us/vsts/user-guide/what-is-vsts) is a cloud service for collaborating on code development. It provides an integrated set of features that you access through your web browser or IDE client, including: Git repositories for source control of your codeBuild and release management to support continuous integration and delivery of your apps. Agile tools to support planning and tracking your work, code defects, and issues using Kanban and Scrum methods. A variety of tools to test your apps, including manual/exploratory testing, load testing, and continuous testing. Highly customizable dashboards for sharing progress and trends. Built-in wiki for sharing information with your team.',
  owner_id: 1,
  lat: 47.666906627951306,
  lng: -122.29870016667064,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1518490458/eventfuls/aobl5pu1dxx7nhiavbow.png",
  date: DateTime.new(2018,2,3,4,5,6)})

Event.create({
  name: 'NSCoder Night (Wayward Coffeehouse, Seattle) 3',
  description: 'NSCoder Night is held every Tuesday evening at Wayward Coffeehouse. It is an informal gathering of Mac and iOS application developers where people can code, talk shop, ask and answer questions, and find some willing victims for project demonstrations. There is no program, and there is a wide range of experience levels. You will find us spread over several tables in the back. We are generally there from about 7 until about 10, with people dropping in all through the evening. No RSVP is needed for this event. It is very informal. Everyone is welcome for all or part of the evening. Bring your MacBook and your iOS or Mac applications in development. Experience levels vary from raw beginner to seasoned expert, and attendance is typically 10 to 20 people.',
  owner_id: 2,
  lat: 47.67754107280815,
  lng: -122.29681189152416,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1517614425/eventfuls/1_iW7i51bEZSnoPwGgWW93Kg.jpg",
  date: DateTime.new(2018,3,3,4,5,6)})

Event.create({
  name: 'WordPress Developers (restarting for 2018!): Advanced Custom Fields deep-dive 3',
  description: 'We are relaunching the WordPress Developer meetup. Join us on March 13th at WeWork in South Lake Union to get into the code side of WordPress, from plugins, to themes, and beyond. Learn something new, network with your fellow developers, share what you’d like to see at the next Developer Meetup, and help us build a better WordPress developer community here in Seattle. Healthy websites change over time just like healthy businesses do. As developers, it is our job to empower website admins, and make our sites more maintainable. This talk shares design patterns and best practices you will find invaluable when creating custom themes for clients, and demonstrates how to implement them using Advanced Custom Fields (ACF). ACF is a powerful development tool used to easily manage custom fields and data. Since the possibilities are endless, we will explore a handful of specific examples.',
  owner_id: 3,
  lat: 47.68355088740244,
  lng: -122.30556662174877,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1518663169/eventfuls/imbf9ozrndsmiyb1yn6v.png",
  date: DateTime.new(2018,4,3,4,5,6)})

Event.create({
  name: 'NEW! Software Craftsmanship - Eastside 3',
  description: 'MicroObject Development is an approach to Object Oriented Programming with Single Responsibility as the core principle guiding principle for how behavior is encapsulated. This core principle is supported by Encapsulation, Behavior, and Immutability. Along with how microObjects uses these principles, Quinn will talk about hands-on-keyboard practices that he and other developers use to produce simple, maintainable, and easily testable code.',
  owner_id: 1,
  lat: 47.66667542029996,
  lng: -122.28960211369213,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1520989479/profile_event.png",
  date: DateTime.new(2018,5,3,4,5,6)})

Event.create({
  name: 'Webinar - Excel and Power BI Clinic) 3',
  description: 'FREE Excel & Power BI Clinic - Solving real world Excel and Power BI Problems occurs every third Thursday of each month from 9am to 10am Central African Time (CAT). Please register for the date and time that works best for you: Get your (on the Job) Excel & Power BI questions ready for our monthly live Clinic. David is a Power Pivot, DAX, Excel and Financial Modelling guru, he is also an ATD Master Trainer. He has taught over 4000 participants in the past 22 years of working with Excel and now also working Power BI since its beta launch as Power Pivot in Excel 2010. Learn how to apply Excel & Power BI tools to solve real-world challenges you face at work. This is distinct from the IT-centric approach to solving problems. Excel and Power BI are productivity tools afterall and not just IT software. Spaces are limited, so book your spot today and get your questions ready. This webinar runs every month. After registering, you will receive a confirmation email containing information about joining the webinar.',
  owner_id: 2,
  lat: 47.67858128256806,
  lng: -122.28582556339916,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1520989610/profile_event2.png",
  date: DateTime.new(2018,6,3,4,5,6)})

Event.create({
  name: 'Tech Happy Hour 3',
  description: 'Complete your Thursday with Tech Happy Hour! Enjoy food from different culture & mingle with our growing TECH community. ENJOY, LEARN & CELEBRATE THE DIFFERENCE ! ABOUT OUR TECH FRIENDLY COMMUNITY extraSlice is more than just a co-working space, it’s a Tech Innovation Place that embraces 3Cs – Community. Culture. Collaboration . Our purpose is to create an environment that allows you to focus on what’s really important, getting your work done, meet interesting people and learning. All these in one place!',
  owner_id: 3,
  lat: 47.671530565905485,
  lng: -122.33011419865306,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1520989689/profile_event3.png",
  date: DateTime.new(2018,7,3,4,5,6)})

Event.create({
  name: 'Hack Night @ ATLAS Workbase 3',
  description: 'Beginner or experienced developer, come join us at ATLAS Workbase to work on whatever coding project you would like to work on. If you are looking for some guidance, we will try to help you with that too!',
  owner_id: 1,
  lat: 47.68859997269333,
  lng: -122.33160626355249,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1518490458/eventfuls/aobl5pu1dxx7nhiavbow.png",
  date: DateTime.new(2018,8,3,4,5,6)})

events = Event.all
users = User.all

events.each do |event|
  users.sample(rand(1..40)).each do |user|
  Attendance.create({
    event_id: event.id,
    user_id: user.id
  })
  end
end

Group.destroy_all
groups = []
groups << {
  name: 'Introduction to Microsoft Visual Studio Team Services with Andrew Cook',
  description: 'Years ago when deploying software you would have to follow a tedious multistep process. A process which would fail under the smallest of errors and inevitably there were errors. Luckily today there are tools to automate not old the deployment process but also the build process. This allows teams and individuals to setup and use continuous integration and continuous deployment. We’ll explore setting up a Git repository, automating builds and deployments from that repository, setting up project work and bug tracking, and creating load tests to measure performance. Microsoft Visual Studio Team Services (https://docs.microsoft.com/en-us/vsts/user-guide/what-is-vsts) is a cloud service for collaborating on code development. It provides an integrated set of features that you access through your web browser or IDE client, including: Git repositories for source control of your codeBuild and release management to support continuous integration and delivery of your apps. Agile tools to support planning and tracking your work, code defects, and issues using Kanban and Scrum methods. A variety of tools to test your apps, including manual/exploratory testing, load testing, and continuous testing. Highly customizable dashboards for sharing progress and trends. Built-in wiki for sharing information with your team.',
  owner_id: 1,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1518490458/eventfuls/aobl5pu1dxx7nhiavbow.png"
}

groups << {
  name: 'NSCoder Night (Wayward Coffeehouse, Seattle)',
  description: 'NSCoder Night is held every Tuesday evening at Wayward Coffeehouse. It is an informal gathering of Mac and iOS application developers where people can code, talk shop, ask and answer questions, and find some willing victims for project demonstrations. There is no program, and there is a wide range of experience levels. You will find us spread over several tables in the back. We are generally there from about 7 until about 10, with people dropping in all through the evening. No RSVP is needed for this event. It is very informal. Everyone is welcome for all or part of the evening. Bring your MacBook and your iOS or Mac applications in development. Experience levels vary from raw beginner to seasoned expert, and attendance is typically 10 to 20 people.',
  owner_id: 2,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1517614425/eventfuls/1_iW7i51bEZSnoPwGgWW93Kg.jpg"
}

groups << {
  name: 'WordPress Developers (restarting for 2018!): Advanced Custom Fields deep-dive',
  description: 'We are relaunching the WordPress Developer meetup. Join us on March 13th at WeWork in South Lake Union to get into the code side of WordPress, from plugins, to themes, and beyond. Learn something new, network with your fellow developers, share what you’d like to see at the next Developer Meetup, and help us build a better WordPress developer community here in Seattle. Healthy websites change over time just like healthy businesses do. As developers, it is our job to empower website admins, and make our sites more maintainable. This talk shares design patterns and best practices you will find invaluable when creating custom themes for clients, and demonstrates how to implement them using Advanced Custom Fields (ACF). ACF is a powerful development tool used to easily manage custom fields and data. Since the possibilities are endless, we will explore a handful of specific examples.',
  owner_id: 3,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1518663169/eventfuls/imbf9ozrndsmiyb1yn6v.png"
}

groups << {
  name: 'NEW! Software Craftsmanship - Eastside',
  description: 'MicroObject Development is an approach to Object Oriented Programming with Single Responsibility as the core principle guiding principle for how behavior is encapsulated. This core principle is supported by Encapsulation, Behavior, and Immutability. Along with how microObjects uses these principles, Quinn will talk about hands-on-keyboard practices that he and other developers use to produce simple, maintainable, and easily testable code.',
  owner_id: 1,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1520989479/profile_event.png"
}

groups << {
  name: 'Webinar - Excel and Power BI Clinic)',
  description: 'FREE Excel & Power BI Clinic - Solving real world Excel and Power BI Problems occurs every third Thursday of each month from 9am to 10am Central African Time (CAT). Please register for the date and time that works best for you: Get your (on the Job) Excel & Power BI questions ready for our monthly live Clinic. David is a Power Pivot, DAX, Excel and Financial Modelling guru, he is also an ATD Master Trainer. He has taught over 4000 participants in the past 22 years of working with Excel and now also working Power BI since its beta launch as Power Pivot in Excel 2010. Learn how to apply Excel & Power BI tools to solve real-world challenges you face at work. This is distinct from the IT-centric approach to solving problems. Excel and Power BI are productivity tools afterall and not just IT software. Spaces are limited, so book your spot today and get your questions ready. This webinar runs every month. After registering, you will receive a confirmation email containing information about joining the webinar.',
  owner_id: 2,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1520989610/profile_event2.png"
}

groups << {
  name: 'Tech Happy Hour',
  description: 'Complete your Thursday with Tech Happy Hour! Enjoy food from different culture & mingle with our growing TECH community. ENJOY, LEARN & CELEBRATE THE DIFFERENCE ! ABOUT OUR TECH FRIENDLY COMMUNITY extraSlice is more than just a co-working space, it’s a Tech Innovation Place that embraces 3Cs – Community. Culture. Collaboration . Our purpose is to create an environment that allows you to focus on what’s really important, getting your work done, meet interesting people and learning. All these in one place!',
  owner_id: 3,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1520989689/profile_event3.png"
}

groups << {
  name: 'Hack Night @ ATLAS Workbase',
  description: 'Beginner or experienced developer, come join us at ATLAS Workbase to work on whatever coding project you would like to work on. If you are looking for some guidance, we will try to help you with that too!',
  owner_id: 1,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1518490458/eventfuls/aobl5pu1dxx7nhiavbow.png"
}

groups << {
  name: 'Introduction to Microsoft Visual Studio Team Services with Andrew Cook 2',
  description: 'Years ago when deploying software you would have to follow a tedious multistep process. A process which would fail under the smallest of errors and inevitably there were errors. Luckily today there are tools to automate not old the deployment process but also the build process. This allows teams and individuals to setup and use continuous integration and continuous deployment. We’ll explore setting up a Git repository, automating builds and deployments from that repository, setting up project work and bug tracking, and creating load tests to measure performance. Microsoft Visual Studio Team Services (https://docs.microsoft.com/en-us/vsts/user-guide/what-is-vsts) is a cloud service for collaborating on code development. It provides an integrated set of features that you access through your web browser or IDE client, including: Git repositories for source control of your codeBuild and release management to support continuous integration and delivery of your apps. Agile tools to support planning and tracking your work, code defects, and issues using Kanban and Scrum methods. A variety of tools to test your apps, including manual/exploratory testing, load testing, and continuous testing. Highly customizable dashboards for sharing progress and trends. Built-in wiki for sharing information with your team.',
  owner_id: 1,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1518490458/eventfuls/aobl5pu1dxx7nhiavbow.png"
}

groups << {
  name: 'NSCoder Night (Wayward Coffeehouse, Seattle 2)',
  description: 'NSCoder Night is held every Tuesday evening at Wayward Coffeehouse. It is an informal gathering of Mac and iOS application developers where people can code, talk shop, ask and answer questions, and find some willing victims for project demonstrations. There is no program, and there is a wide range of experience levels. You will find us spread over several tables in the back. We are generally there from about 7 until about 10, with people dropping in all through the evening. No RSVP is needed for this event. It is very informal. Everyone is welcome for all or part of the evening. Bring your MacBook and your iOS or Mac applications in development. Experience levels vary from raw beginner to seasoned expert, and attendance is typically 10 to 20 people.',
  owner_id: 2,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1517614425/eventfuls/1_iW7i51bEZSnoPwGgWW93Kg.jpg"
}

groups << {
  name: 'WordPress Developers (restarting for 2018!) 2: Advanced Custom Fields deep-dive',
  description: 'We are relaunching the WordPress Developer meetup. Join us on March 13th at WeWork in South Lake Union to get into the code side of WordPress, from plugins, to themes, and beyond. Learn something new, network with your fellow developers, share what you’d like to see at the next Developer Meetup, and help us build a better WordPress developer community here in Seattle. Healthy websites change over time just like healthy businesses do. As developers, it is our job to empower website admins, and make our sites more maintainable. This talk shares design patterns and best practices you will find invaluable when creating custom themes for clients, and demonstrates how to implement them using Advanced Custom Fields (ACF). ACF is a powerful development tool used to easily manage custom fields and data. Since the possibilities are endless, we will explore a handful of specific examples.',
  owner_id: 3,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1518663169/eventfuls/imbf9ozrndsmiyb1yn6v.png"
}

groups << {
  name: 'NEW! Software Craftsmanship - Eastside 2',
  description: 'MicroObject Development is an approach to Object Oriented Programming with Single Responsibility as the core principle guiding principle for how behavior is encapsulated. This core principle is supported by Encapsulation, Behavior, and Immutability. Along with how microObjects uses these principles, Quinn will talk about hands-on-keyboard practices that he and other developers use to produce simple, maintainable, and easily testable code.',
  owner_id: 1,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1520989479/profile_event.png"
}

groups << {
  name: 'Webinar - Excel and Power BI Clinic 2)',
  description: 'FREE Excel & Power BI Clinic - Solving real world Excel and Power BI Problems occurs every third Thursday of each month from 9am to 10am Central African Time (CAT). Please register for the date and time that works best for you: Get your (on the Job) Excel & Power BI questions ready for our monthly live Clinic. David is a Power Pivot, DAX, Excel and Financial Modelling guru, he is also an ATD Master Trainer. He has taught over 4000 participants in the past 22 years of working with Excel and now also working Power BI since its beta launch as Power Pivot in Excel 2010. Learn how to apply Excel & Power BI tools to solve real-world challenges you face at work. This is distinct from the IT-centric approach to solving problems. Excel and Power BI are productivity tools afterall and not just IT software. Spaces are limited, so book your spot today and get your questions ready. This webinar runs every month. After registering, you will receive a confirmation email containing information about joining the webinar.',
  owner_id: 2,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1520989610/profile_event2.png"
}

groups << {
  name: 'Tech Happy Hour 2',
  description: 'Complete your Thursday with Tech Happy Hour! Enjoy food from different culture & mingle with our growing TECH community. ENJOY, LEARN & CELEBRATE THE DIFFERENCE ! ABOUT OUR TECH FRIENDLY COMMUNITY extraSlice is more than just a co-working space, it’s a Tech Innovation Place that embraces 3Cs – Community. Culture. Collaboration . Our purpose is to create an environment that allows you to focus on what’s really important, getting your work done, meet interesting people and learning. All these in one place!',
  owner_id: 3,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1520989689/profile_event3.png"
}

groups << {
  name: 'Hack Night @ ATLAS Workbase 2',
  description: 'Beginner or experienced developer, come join us at ATLAS Workbase to work on whatever coding project you would like to work on. If you are looking for some guidance, we will try to help you with that too!',
  owner_id: 1,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1518490458/eventfuls/aobl5pu1dxx7nhiavbow.png"
}

groups << {
  name: 'Introduction to Microsoft Visual Studio Team Services with Andrew Cook 3',
  description: 'Years ago when deploying software you would have to follow a tedious multistep process. A process which would fail under the smallest of errors and inevitably there were errors. Luckily today there are tools to automate not old the deployment process but also the build process. This allows teams and individuals to setup and use continuous integration and continuous deployment. We’ll explore setting up a Git repository, automating builds and deployments from that repository, setting up project work and bug tracking, and creating load tests to measure performance. Microsoft Visual Studio Team Services (https://docs.microsoft.com/en-us/vsts/user-guide/what-is-vsts) is a cloud service for collaborating on code development. It provides an integrated set of features that you access through your web browser or IDE client, including: Git repositories for source control of your codeBuild and release management to support continuous integration and delivery of your apps. Agile tools to support planning and tracking your work, code defects, and issues using Kanban and Scrum methods. A variety of tools to test your apps, including manual/exploratory testing, load testing, and continuous testing. Highly customizable dashboards for sharing progress and trends. Built-in wiki for sharing information with your team.',
  owner_id: 1,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1518490458/eventfuls/aobl5pu1dxx7nhiavbow.png"
}

groups << {
  name: 'NSCoder Night (Wayward Coffeehouse, Seattle) 3',
  description: 'NSCoder Night is held every Tuesday evening at Wayward Coffeehouse. It is an informal gathering of Mac and iOS application developers where people can code, talk shop, ask and answer questions, and find some willing victims for project demonstrations. There is no program, and there is a wide range of experience levels. You will find us spread over several tables in the back. We are generally there from about 7 until about 10, with people dropping in all through the evening. No RSVP is needed for this event. It is very informal. Everyone is welcome for all or part of the evening. Bring your MacBook and your iOS or Mac applications in development. Experience levels vary from raw beginner to seasoned expert, and attendance is typically 10 to 20 people.',
  owner_id: 2,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1517614425/eventfuls/1_iW7i51bEZSnoPwGgWW93Kg.jpg"
}

groups << {
  name: 'WordPress Developers (restarting for 2018!): Advanced Custom Fields deep-dive 3',
  description: 'We are relaunching the WordPress Developer meetup. Join us on March 13th at WeWork in South Lake Union to get into the code side of WordPress, from plugins, to themes, and beyond. Learn something new, network with your fellow developers, share what you’d like to see at the next Developer Meetup, and help us build a better WordPress developer community here in Seattle. Healthy websites change over time just like healthy businesses do. As developers, it is our job to empower website admins, and make our sites more maintainable. This talk shares design patterns and best practices you will find invaluable when creating custom themes for clients, and demonstrates how to implement them using Advanced Custom Fields (ACF). ACF is a powerful development tool used to easily manage custom fields and data. Since the possibilities are endless, we will explore a handful of specific examples.',
  owner_id: 3,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1518663169/eventfuls/imbf9ozrndsmiyb1yn6v.png"
}

groups << {
  name: 'NEW! Software Craftsmanship - Eastside 3',
  description: 'MicroObject Development is an approach to Object Oriented Programming with Single Responsibility as the core principle guiding principle for how behavior is encapsulated. This core principle is supported by Encapsulation, Behavior, and Immutability. Along with how microObjects uses these principles, Quinn will talk about hands-on-keyboard practices that he and other developers use to produce simple, maintainable, and easily testable code.',
  owner_id: 1,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1520989479/profile_event.png"
}

groups << {
  name: 'Webinar - Excel and Power BI Clinic) 3',
  description: 'FREE Excel & Power BI Clinic - Solving real world Excel and Power BI Problems occurs every third Thursday of each month from 9am to 10am Central African Time (CAT). Please register for the date and time that works best for you: Get your (on the Job) Excel & Power BI questions ready for our monthly live Clinic. David is a Power Pivot, DAX, Excel and Financial Modelling guru, he is also an ATD Master Trainer. He has taught over 4000 participants in the past 22 years of working with Excel and now also working Power BI since its beta launch as Power Pivot in Excel 2010. Learn how to apply Excel & Power BI tools to solve real-world challenges you face at work. This is distinct from the IT-centric approach to solving problems. Excel and Power BI are productivity tools afterall and not just IT software. Spaces are limited, so book your spot today and get your questions ready. This webinar runs every month. After registering, you will receive a confirmation email containing information about joining the webinar.',
  owner_id: 2,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1520989610/profile_event2.png"
}

groups << {
  name: 'Tech Happy Hour 3',
  description: 'Complete your Thursday with Tech Happy Hour! Enjoy food from different culture & mingle with our growing TECH community. ENJOY, LEARN & CELEBRATE THE DIFFERENCE ! ABOUT OUR TECH FRIENDLY COMMUNITY extraSlice is more than just a co-working space, it’s a Tech Innovation Place that embraces 3Cs – Community. Culture. Collaboration . Our purpose is to create an environment that allows you to focus on what’s really important, getting your work done, meet interesting people and learning. All these in one place!',
  owner_id: 3,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1520989689/profile_event3.png"
}

groups << {
  name: 'Hack Night @ ATLAS Workbase 3',
  description: 'Beginner or experienced developer, come join us at ATLAS Workbase to work on whatever coding project you would like to work on. If you are looking for some guidance, we will try to help you with that too!',
  owner_id: 1,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1518490458/eventfuls/aobl5pu1dxx7nhiavbow.png"
}

groups << {
  name: 'Introduction to Microsoft Visual Studio Team Services with Andrew Cook 4',
  description: 'Years ago when deploying software you would have to follow a tedious multistep process. A process which would fail under the smallest of errors and inevitably there were errors. Luckily today there are tools to automate not old the deployment process but also the build process. This allows teams and individuals to setup and use continuous integration and continuous deployment. We’ll explore setting up a Git repository, automating builds and deployments from that repository, setting up project work and bug tracking, and creating load tests to measure performance. Microsoft Visual Studio Team Services (https://docs.microsoft.com/en-us/vsts/user-guide/what-is-vsts) is a cloud service for collaborating on code development. It provides an integrated set of features that you access through your web browser or IDE client, including: Git repositories for source control of your codeBuild and release management to support continuous integration and delivery of your apps. Agile tools to support planning and tracking your work, code defects, and issues using Kanban and Scrum methods. A variety of tools to test your apps, including manual/exploratory testing, load testing, and continuous testing. Highly customizable dashboards for sharing progress and trends. Built-in wiki for sharing information with your team.',
  owner_id: 1,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1518490458/eventfuls/aobl5pu1dxx7nhiavbow.png"
}

groups << {
  name: 'NSCoder Night (Wayward Coffeehouse, Seattle) 4',
  description: 'NSCoder Night is held every Tuesday evening at Wayward Coffeehouse. It is an informal gathering of Mac and iOS application developers where people can code, talk shop, ask and answer questions, and find some willing victims for project demonstrations. There is no program, and there is a wide range of experience levels. You will find us spread over several tables in the back. We are generally there from about 7 until about 10, with people dropping in all through the evening. No RSVP is needed for this event. It is very informal. Everyone is welcome for all or part of the evening. Bring your MacBook and your iOS or Mac applications in development. Experience levels vary from raw beginner to seasoned expert, and attendance is typically 10 to 20 people.',
  owner_id: 2,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1517614425/eventfuls/1_iW7i51bEZSnoPwGgWW93Kg.jpg"
}

groups << {
  name: 'WordPress Developers (restarting for 2018!): Advanced Custom Fields deep-dive 4',
  description: 'We are relaunching the WordPress Developer meetup. Join us on March 13th at WeWork in South Lake Union to get into the code side of WordPress, from plugins, to themes, and beyond. Learn something new, network with your fellow developers, share what you’d like to see at the next Developer Meetup, and help us build a better WordPress developer community here in Seattle. Healthy websites change over time just like healthy businesses do. As developers, it is our job to empower website admins, and make our sites more maintainable. This talk shares design patterns and best practices you will find invaluable when creating custom themes for clients, and demonstrates how to implement them using Advanced Custom Fields (ACF). ACF is a powerful development tool used to easily manage custom fields and data. Since the possibilities are endless, we will explore a handful of specific examples.',
  owner_id: 3,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1518663169/eventfuls/imbf9ozrndsmiyb1yn6v.png"
}

groups << {
  name: 'NEW! Software Craftsmanship - Eastside 4',
  description: 'MicroObject Development is an approach to Object Oriented Programming with Single Responsibility as the core principle guiding principle for how behavior is encapsulated. This core principle is supported by Encapsulation, Behavior, and Immutability. Along with how microObjects uses these principles, Quinn will talk about hands-on-keyboard practices that he and other developers use to produce simple, maintainable, and easily testable code.',
  owner_id: 1,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1520989479/profile_event.png"
}

groups << {
  name: 'Webinar - Excel and Power BI Clinic) 4',
  description: 'FREE Excel & Power BI Clinic - Solving real world Excel and Power BI Problems occurs every third Thursday of each month from 9am to 10am Central African Time (CAT). Please register for the date and time that works best for you: Get your (on the Job) Excel & Power BI questions ready for our monthly live Clinic. David is a Power Pivot, DAX, Excel and Financial Modelling guru, he is also an ATD Master Trainer. He has taught over 4000 participants in the past 22 years of working with Excel and now also working Power BI since its beta launch as Power Pivot in Excel 2010. Learn how to apply Excel & Power BI tools to solve real-world challenges you face at work. This is distinct from the IT-centric approach to solving problems. Excel and Power BI are productivity tools afterall and not just IT software. Spaces are limited, so book your spot today and get your questions ready. This webinar runs every month. After registering, you will receive a confirmation email containing information about joining the webinar.',
  owner_id: 2,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1520989610/profile_event2.png"
}

groups << {
  name: 'Tech Happy Hour 4',
  description: 'Complete your Thursday with Tech Happy Hour! Enjoy food from different culture & mingle with our growing TECH community. ENJOY, LEARN & CELEBRATE THE DIFFERENCE ! ABOUT OUR TECH FRIENDLY COMMUNITY extraSlice is more than just a co-working space, it’s a Tech Innovation Place that embraces 3Cs – Community. Culture. Collaboration . Our purpose is to create an environment that allows you to focus on what’s really important, getting your work done, meet interesting people and learning. All these in one place!',
  owner_id: 3,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1520989689/profile_event3.png"
}

groups << {
  name: 'Hack Night @ ATLAS Workbase 4',
  description: 'Beginner or experienced developer, come join us at ATLAS Workbase to work on whatever coding project you would like to work on. If you are looking for some guidance, we will try to help you with that too!',
  owner_id: 1,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1518490458/eventfuls/aobl5pu1dxx7nhiavbow.png"
}

location = [
  {lat: 47.58023822657021, lng: -122.3009429150253},
  {lat: 47.57641683919894, lng: -122.30446197325284},
  {lat: 47.577864367229786, lng: -122.28729583555753},
  {lat: 47.584811944735, lng: -122.3060927563339},
  {lat: 47.583364608787335, lng: -122.31210090452726},
  {lat: 47.57577991418771, lng: -122.30883933836515},
  {lat: 47.574969271150216, lng: -122.29270316893155},
  {lat: 47.571147499222434, lng: -122.28918411070401},
  {lat: 47.57479556029516, lng: -122.30514861876065},
  {lat: 47.577227459826396, lng: -122.31356002623136},
  {lat: 47.584175121848105, lng: -122.3115859203964},
  {lat: 47.58452248074683, lng: -122.296565549913},
  {lat: 47.57670634800652, lng: -122.2925315075546},
  {lat: 47.572479360496104, lng: -122.28952743345792},
  {lat: 47.57670634800652, lng: -122.30635024839933},
  {lat: 47.58475405206541, lng: -122.30489112669522},
  {lat: 47.587590717579545, lng: -122.31029846006925},
  {lat: 47.58133827123204, lng: -122.3104701214462},
  {lat: 47.5771695587692, lng: -122.29819633299405},
  {lat: 47.584175121848105, lng: -122.30686523253019},
  {lat: 47.579775042955475, lng: -122.29682304197843},
  {lat: 47.57549040025782, lng: -122.31124259764249},
  {lat: 47.60921859981483, lng: -122.30872485273437},
  {lat: 47.61558343283594, lng: -122.34116885297851},
  {lat: 47.62055903544943, lng: -122.33052584760742},
  {lat: 47.609287877609994, lng: -122.31782913208008},
  {lat: 47.610028712494476, lng: -122.33258578413086},
  {lat: 47.607482601818226, lng: -122.32280108564453},
  {lat: 47.62055903544943, lng: -122.33104083173828}
]

i = 0
groups.each do |group|
  Group.create!(group.merge(location[i]))
  i+=1
end

groups = Group.all

groups.each do |group|
  users.sample(rand(1..40)).each do |user|
  Membership.create({
    group_id: group.id,
    user_id: user.id
  })
  end
end
