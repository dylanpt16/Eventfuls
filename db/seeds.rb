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
events = []
events << {
  name: 'Introduction to Microsoft Visual Studio Team Services with Andrew Cook',
  description: 'Years ago when deploying software you would have to follow a tedious multistep process. A process which would fail under the smallest of errors and inevitably there were errors. Luckily today there are tools to automate not old the deployment process but also the build process. This allows teams and individuals to setup and use continuous integration and continuous deployment. We’ll explore setting up a Git repository, automating builds and deployments from that repository, setting up project work and bug tracking, and creating load tests to measure performance. Microsoft Visual Studio Team Services (https://docs.microsoft.com/en-us/vsts/user-guide/what-is-vsts) is a cloud service for collaborating on code development. It provides an integrated set of features that you access through your web browser or IDE client, including: Git repositories for source control of your codeBuild and release management to support continuous integration and delivery of your apps. Agile tools to support planning and tracking your work, code defects, and issues using Kanban and Scrum methods. A variety of tools to test your apps, including manual/exploratory testing, load testing, and continuous testing. Highly customizable dashboards for sharing progress and trends. Built-in wiki for sharing information with your team.',
  owner_id: 8,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1518490458/eventfuls/aobl5pu1dxx7nhiavbow.png",
  date: DateTime.new(2018,2,3,4,5,6)}

events << {
  name: 'NSCoder Night (Wayward Coffeehouse, Seattle)',
  description: 'NSCoder Night is held every Tuesday evening at Wayward Coffeehouse. It is an informal gathering of Mac and iOS application developers where people can code, talk shop, ask and answer questions, and find some willing victims for project demonstrations. There is no program, and there is a wide range of experience levels. You will find us spread over several tables in the back. We are generally there from about 7 until about 10, with people dropping in all through the evening. No RSVP is needed for this event. It is very informal. Everyone is welcome for all or part of the evening. Bring your MacBook and your iOS or Mac applications in development. Experience levels vary from raw beginner to seasoned expert, and attendance is typically 10 to 20 people.',
  owner_id: 2,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1517614425/eventfuls/1_iW7i51bEZSnoPwGgWW93Kg.jpg",
  date: DateTime.new(2018,3,3,4,5,6)}

events << {
  name: 'WordPress Developers (restarting for 2018!): Advanced Custom Fields deep-dive',
  description: 'We are relaunching the WordPress Developer meetup. Join us on March 13th at WeWork in South Lake Union to get into the code side of WordPress, from plugins, to themes, and beyond. Learn something new, network with your fellow developers, share what you’d like to see at the next Developer Meetup, and help us build a better WordPress developer community here in Seattle. Healthy websites change over time just like healthy businesses do. As developers, it is our job to empower website admins, and make our sites more maintainable. This talk shares design patterns and best practices you will find invaluable when creating custom themes for clients, and demonstrates how to implement them using Advanced Custom Fields (ACF). ACF is a powerful development tool used to easily manage custom fields and data. Since the possibilities are endless, we will explore a handful of specific examples.',
  owner_id: 3,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1518663169/eventfuls/imbf9ozrndsmiyb1yn6v.png",
  date: DateTime.new(2018,4,3,4,5,6)}

events << {
  name: 'NEW! Software Craftsmanship - Eastside',
  description: 'MicroObject Development is an approach to Object Oriented Programming with Single Responsibility as the core principle guiding principle for how behavior is encapsulated. This core principle is supported by Encapsulation, Behavior, and Immutability. Along with how microObjects uses these principles, Quinn will talk about hands-on-keyboard practices that he and other developers use to produce simple, maintainable, and easily testable code.',
  owner_id: 8,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1520989479/profile_event.png",
  date: DateTime.new(2018,5,3,4,5,6)}

events << {
  name: 'Webinar - Excel and Power BI Clinic)',
  description: 'FREE Excel & Power BI Clinic - Solving real world Excel and Power BI Problems occurs every third Thursday of each month from 9am to 10am Central African Time (CAT). Please register for the date and time that works best for you: Get your (on the Job) Excel & Power BI questions ready for our monthly live Clinic. David is a Power Pivot, DAX, Excel and Financial Modelling guru, he is also an ATD Master Trainer. He has taught over 4000 participants in the past 22 years of working with Excel and now also working Power BI since its beta launch as Power Pivot in Excel 2010. Learn how to apply Excel & Power BI tools to solve real-world challenges you face at work. This is distinct from the IT-centric approach to solving problems. Excel and Power BI are productivity tools afterall and not just IT software. Spaces are limited, so book your spot today and get your questions ready. This webinar runs every month. After registering, you will receive a confirmation email containing information about joining the webinar.',
  owner_id: 2,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1520989610/profile_event2.png",
  date: DateTime.new(2018,6,3,4,5,6)}

events << {
  name: 'Tech Happy Hour',
  description: 'Complete your Thursday with Tech Happy Hour! Enjoy food from different culture & mingle with our growing TECH community. ENJOY, LEARN & CELEBRATE THE DIFFERENCE ! ABOUT OUR TECH FRIENDLY COMMUNITY extraSlice is more than just a co-working space, it’s a Tech Innovation Place that embraces 3Cs – Community. Culture. Collaboration . Our purpose is to create an environment that allows you to focus on what’s really important, getting your work done, meet interesting people and learning. All these in one place!',
  owner_id: 3,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1520989689/profile_event3.png",
  date: DateTime.new(2018,7,3,4,5,6)}

events << {
  name: 'Hack Night @ ATLAS Workbase',
  description: 'Beginner or experienced developer, come join us at ATLAS Workbase to work on whatever coding project you would like to work on. If you are looking for some guidance, we will try to help you with that too!',
  owner_id: 8,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1518490458/eventfuls/aobl5pu1dxx7nhiavbow.png",
  date: DateTime.new(2018,8,3,4,5,6)}

events << {
  name: 'Introduction to Microsoft Visual Studio Team Services with Andrew Cook 2',
  description: 'Years ago when deploying software you would have to follow a tedious multistep process. A process which would fail under the smallest of errors and inevitably there were errors. Luckily today there are tools to automate not old the deployment process but also the build process. This allows teams and individuals to setup and use continuous integration and continuous deployment. We’ll explore setting up a Git repository, automating builds and deployments from that repository, setting up project work and bug tracking, and creating load tests to measure performance. Microsoft Visual Studio Team Services (https://docs.microsoft.com/en-us/vsts/user-guide/what-is-vsts) is a cloud service for collaborating on code development. It provides an integrated set of features that you access through your web browser or IDE client, including: Git repositories for source control of your codeBuild and release management to support continuous integration and delivery of your apps. Agile tools to support planning and tracking your work, code defects, and issues using Kanban and Scrum methods. A variety of tools to test your apps, including manual/exploratory testing, load testing, and continuous testing. Highly customizable dashboards for sharing progress and trends. Built-in wiki for sharing information with your team.',
  owner_id: 8,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1518490458/eventfuls/aobl5pu1dxx7nhiavbow.png",
  date: DateTime.new(2018,2,3,4,5,6)}

events << {
  name: 'NSCoder Night (Wayward Coffeehouse, Seattle 2)',
  description: 'NSCoder Night is held every Tuesday evening at Wayward Coffeehouse. It is an informal gathering of Mac and iOS application developers where people can code, talk shop, ask and answer questions, and find some willing victims for project demonstrations. There is no program, and there is a wide range of experience levels. You will find us spread over several tables in the back. We are generally there from about 7 until about 10, with people dropping in all through the evening. No RSVP is needed for this event. It is very informal. Everyone is welcome for all or part of the evening. Bring your MacBook and your iOS or Mac applications in development. Experience levels vary from raw beginner to seasoned expert, and attendance is typically 10 to 20 people.',
  owner_id: 2,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1517614425/eventfuls/1_iW7i51bEZSnoPwGgWW93Kg.jpg",
  date: DateTime.new(2018,3,3,4,5,6)}

events << {
  name: 'WordPress Developers (restarting for 2018!) 2: Advanced Custom Fields deep-dive',
  description: 'We are relaunching the WordPress Developer meetup. Join us on March 13th at WeWork in South Lake Union to get into the code side of WordPress, from plugins, to themes, and beyond. Learn something new, network with your fellow developers, share what you’d like to see at the next Developer Meetup, and help us build a better WordPress developer community here in Seattle. Healthy websites change over time just like healthy businesses do. As developers, it is our job to empower website admins, and make our sites more maintainable. This talk shares design patterns and best practices you will find invaluable when creating custom themes for clients, and demonstrates how to implement them using Advanced Custom Fields (ACF). ACF is a powerful development tool used to easily manage custom fields and data. Since the possibilities are endless, we will explore a handful of specific examples.',
  owner_id: 3,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1518663169/eventfuls/imbf9ozrndsmiyb1yn6v.png",
  date: DateTime.new(2018,4,3,4,5,6)}

events << {
  name: 'NEW! Software Craftsmanship - Eastside 2',
  description: 'MicroObject Development is an approach to Object Oriented Programming with Single Responsibility as the core principle guiding principle for how behavior is encapsulated. This core principle is supported by Encapsulation, Behavior, and Immutability. Along with how microObjects uses these principles, Quinn will talk about hands-on-keyboard practices that he and other developers use to produce simple, maintainable, and easily testable code.',
  owner_id: 8,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1520989479/profile_event.png",
  date: DateTime.new(2018,5,3,4,5,6)}

events << {
  name: 'Webinar - Excel and Power BI Clinic 2)',
  description: 'FREE Excel & Power BI Clinic - Solving real world Excel and Power BI Problems occurs every third Thursday of each month from 9am to 10am Central African Time (CAT). Please register for the date and time that works best for you: Get your (on the Job) Excel & Power BI questions ready for our monthly live Clinic. David is a Power Pivot, DAX, Excel and Financial Modelling guru, he is also an ATD Master Trainer. He has taught over 4000 participants in the past 22 years of working with Excel and now also working Power BI since its beta launch as Power Pivot in Excel 2010. Learn how to apply Excel & Power BI tools to solve real-world challenges you face at work. This is distinct from the IT-centric approach to solving problems. Excel and Power BI are productivity tools afterall and not just IT software. Spaces are limited, so book your spot today and get your questions ready. This webinar runs every month. After registering, you will receive a confirmation email containing information about joining the webinar.',
  owner_id: 2,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1520989610/profile_event2.png",
  date: DateTime.new(2018,6,3,4,5,6)}

events << {
  name: 'Tech Happy Hour 2',
  description: 'Complete your Thursday with Tech Happy Hour! Enjoy food from different culture & mingle with our growing TECH community. ENJOY, LEARN & CELEBRATE THE DIFFERENCE ! ABOUT OUR TECH FRIENDLY COMMUNITY extraSlice is more than just a co-working space, it’s a Tech Innovation Place that embraces 3Cs – Community. Culture. Collaboration . Our purpose is to create an environment that allows you to focus on what’s really important, getting your work done, meet interesting people and learning. All these in one place!',
  owner_id: 3,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1520989689/profile_event3.png",
  date: DateTime.new(2018,7,3,4,5,6)}

events << {
  name: 'Hack Night @ ATLAS Workbase 2',
  description: 'Beginner or experienced developer, come join us at ATLAS Workbase to work on whatever coding project you would like to work on. If you are looking for some guidance, we will try to help you with that too!',
  owner_id: 8,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1518490458/eventfuls/aobl5pu1dxx7nhiavbow.png",
  date: DateTime.new(2018,8,3,4,5,6)}

events << {
  name: 'Introduction to Microsoft Visual Studio Team Services with Andrew Cook 3',
  description: 'Years ago when deploying software you would have to follow a tedious multistep process. A process which would fail under the smallest of errors and inevitably there were errors. Luckily today there are tools to automate not old the deployment process but also the build process. This allows teams and individuals to setup and use continuous integration and continuous deployment. We’ll explore setting up a Git repository, automating builds and deployments from that repository, setting up project work and bug tracking, and creating load tests to measure performance. Microsoft Visual Studio Team Services (https://docs.microsoft.com/en-us/vsts/user-guide/what-is-vsts) is a cloud service for collaborating on code development. It provides an integrated set of features that you access through your web browser or IDE client, including: Git repositories for source control of your codeBuild and release management to support continuous integration and delivery of your apps. Agile tools to support planning and tracking your work, code defects, and issues using Kanban and Scrum methods. A variety of tools to test your apps, including manual/exploratory testing, load testing, and continuous testing. Highly customizable dashboards for sharing progress and trends. Built-in wiki for sharing information with your team.',
  owner_id: 8,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1518490458/eventfuls/aobl5pu1dxx7nhiavbow.png",
  date: DateTime.new(2018,2,3,4,5,6)}

events << {
  name: 'NSCoder Night (Wayward Coffeehouse, Seattle) 3',
  description: 'NSCoder Night is held every Tuesday evening at Wayward Coffeehouse. It is an informal gathering of Mac and iOS application developers where people can code, talk shop, ask and answer questions, and find some willing victims for project demonstrations. There is no program, and there is a wide range of experience levels. You will find us spread over several tables in the back. We are generally there from about 7 until about 10, with people dropping in all through the evening. No RSVP is needed for this event. It is very informal. Everyone is welcome for all or part of the evening. Bring your MacBook and your iOS or Mac applications in development. Experience levels vary from raw beginner to seasoned expert, and attendance is typically 10 to 20 people.',
  owner_id: 2,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1517614425/eventfuls/1_iW7i51bEZSnoPwGgWW93Kg.jpg",
  date: DateTime.new(2018,3,3,4,5,6)}

events << {
  name: 'WordPress Developers (restarting for 2018!): Advanced Custom Fields deep-dive 3',
  description: 'We are relaunching the WordPress Developer meetup. Join us on March 13th at WeWork in South Lake Union to get into the code side of WordPress, from plugins, to themes, and beyond. Learn something new, network with your fellow developers, share what you’d like to see at the next Developer Meetup, and help us build a better WordPress developer community here in Seattle. Healthy websites change over time just like healthy businesses do. As developers, it is our job to empower website admins, and make our sites more maintainable. This talk shares design patterns and best practices you will find invaluable when creating custom themes for clients, and demonstrates how to implement them using Advanced Custom Fields (ACF). ACF is a powerful development tool used to easily manage custom fields and data. Since the possibilities are endless, we will explore a handful of specific examples.',
  owner_id: 3,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1518663169/eventfuls/imbf9ozrndsmiyb1yn6v.png",
  date: DateTime.new(2018,4,3,4,5,6)}

events << {
  name: 'NEW! Software Craftsmanship - Eastside 3',
  description: 'MicroObject Development is an approach to Object Oriented Programming with Single Responsibility as the core principle guiding principle for how behavior is encapsulated. This core principle is supported by Encapsulation, Behavior, and Immutability. Along with how microObjects uses these principles, Quinn will talk about hands-on-keyboard practices that he and other developers use to produce simple, maintainable, and easily testable code.',
  owner_id: 8,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1520989479/profile_event.png",
  date: DateTime.new(2018,5,3,4,5,6)}

events << {
  name: 'Webinar - Excel and Power BI Clinic) 3',
  description: 'FREE Excel & Power BI Clinic - Solving real world Excel and Power BI Problems occurs every third Thursday of each month from 9am to 10am Central African Time (CAT). Please register for the date and time that works best for you: Get your (on the Job) Excel & Power BI questions ready for our monthly live Clinic. David is a Power Pivot, DAX, Excel and Financial Modelling guru, he is also an ATD Master Trainer. He has taught over 4000 participants in the past 22 years of working with Excel and now also working Power BI since its beta launch as Power Pivot in Excel 2010. Learn how to apply Excel & Power BI tools to solve real-world challenges you face at work. This is distinct from the IT-centric approach to solving problems. Excel and Power BI are productivity tools afterall and not just IT software. Spaces are limited, so book your spot today and get your questions ready. This webinar runs every month. After registering, you will receive a confirmation email containing information about joining the webinar.',
  owner_id: 2,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1520989610/profile_event2.png",
  date: DateTime.new(2018,6,3,4,5,6)}

events << {
  name: 'Tech Happy Hour 3',
  description: 'Complete your Thursday with Tech Happy Hour! Enjoy food from different culture & mingle with our growing TECH community. ENJOY, LEARN & CELEBRATE THE DIFFERENCE ! ABOUT OUR TECH FRIENDLY COMMUNITY extraSlice is more than just a co-working space, it’s a Tech Innovation Place that embraces 3Cs – Community. Culture. Collaboration . Our purpose is to create an environment that allows you to focus on what’s really important, getting your work done, meet interesting people and learning. All these in one place!',
  owner_id: 3,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1520989689/profile_event3.png",
  date: DateTime.new(2018,7,3,4,5,6)}

events << {
  name: 'Hack Night @ ATLAS Workbase 3',
  description: 'Beginner or experienced developer, come join us at ATLAS Workbase to work on whatever coding project you would like to work on. If you are looking for some guidance, we will try to help you with that too!',
  owner_id: 8,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1518490458/eventfuls/aobl5pu1dxx7nhiavbow.png",
  date: DateTime.new(2018,8,3,4,5,6)}

locations = [
  {lat: 47.6255341645739, lng: -122.34777781599121},
  {lat: 47.61998050133359, lng: -122.3115572654541},
  {lat: 47.61743487516832, lng: -122.30125758283691},
  {lat: 47.60586228503532, lng: -122.30657908552246},
  {lat: 47.61280614641761, lng: -122.31104228132324},
  {lat: 47.616277731393026, lng: -122.30812403791504},
  {lat: 47.61465768708585, lng: -122.34400126569824},
  {lat: 47.62796370671503, lng: -122.35687586896972},
  {lat: 47.60019078101783, lng: -122.31636378400879},
  {lat: 47.5874565936553, lng: -122.31619212263183},
  {lat: 47.585372522511335, lng: -122.3064074241455},
  {lat: 47.585372522511335, lng: -122.32820841901855},
  {lat: 47.585025169253306, lng: -122.33713481062011},
  {lat: 47.585025169253306, lng: -122.30949732893066},
  {lat: 47.58791970930754, lng: -122.29370448225097},
  {lat: 47.596718128147415, lng: -122.29198786848144},
  {lat: 47.60493636719486, lng: -122.30142924421386},
  {lat: 47.61419480806479, lng: -122.30005595319824},
  {lat: 47.603200227068214, lng: -122.3115572654541},
  {lat: 47.59833872816973, lng: -122.29902598493652},
  {lat: 47.6048206263124, lng: -122.29662272565918},
  {lat: 47.61384764611016, lng: -122.29833933942871},
  {lat: 47.618823413896, lng: -122.29181620710449},
  {lat: 47.62414580407628, lng: -122.29868266218261}
]

i = 0
events.each do |event|
  Event.create!(event.merge(locations[i]))
  i+=1
end

users = User.all
events = Event.all

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
  name: 'Seattle Apache Flink Meetup',
  description: 'Years ago when deploying software you would have to follow a tedious multistep process. A process which would fail under the smallest of errors and inevitably there were errors. Luckily today there are tools to automate not old the deployment process but also the build process. This allows teams and individuals to setup and use continuous integration and continuous deployment. We’ll explore setting up a Git repository, automating builds and deployments from that repository, setting up project work and bug tracking, and creating load tests to measure performance. Microsoft Visual Studio Team Services (https://docs.microsoft.com/en-us/vsts/user-guide/what-is-vsts) is a cloud service for collaborating on code development. It provides an integrated set of features that you access through your web browser or IDE client, including: Git repositories for source control of your codeBuild and release management to support continuous integration and delivery of your apps. Agile tools to support planning and tracking your work, code defects, and issues using Kanban and Scrum methods. A variety of tools to test your apps, including manual/exploratory testing, load testing, and continuous testing. Highly customizable dashboards for sharing progress and trends. Built-in wiki for sharing information with your team.',
  owner_id: 8,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1521073237/group1_mjgwdn.png"
}

groups << {
  name: 'Learn Code in Seattle (Flatiron School Study Groups)',
  description: 'NSCoder Night is held every Tuesday evening at Wayward Coffeehouse. It is an informal gathering of Mac and iOS application developers where people can code, talk shop, ask and answer questions, and find some willing victims for project demonstrations. There is no program, and there is a wide range of experience levels. You will find us spread over several tables in the back. We are generally there from about 7 until about 10, with people dropping in all through the evening. No RSVP is needed for this event. It is very informal. Everyone is welcome for all or part of the evening. Bring your MacBook and your iOS or Mac applications in development. Experience levels vary from raw beginner to seasoned expert, and attendance is typically 10 to 20 people.',
  owner_id: 2,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1521073236/group2_hbibg9.png"
}

groups << {
  name: 'Seattle Data Science',
  description: 'We are relaunching the WordPress Developer meetup. Join us on March 13th at WeWork in South Lake Union to get into the code side of WordPress, from plugins, to themes, and beyond. Learn something new, network with your fellow developers, share what you’d like to see at the next Developer Meetup, and help us build a better WordPress developer community here in Seattle. Healthy websites change over time just like healthy businesses do. As developers, it is our job to empower website admins, and make our sites more maintainable. This talk shares design patterns and best practices you will find invaluable when creating custom themes for clients, and demonstrates how to implement them using Advanced Custom Fields (ACF). ACF is a powerful development tool used to easily manage custom fields and data. Since the possibilities are endless, we will explore a handful of specific examples.',
  owner_id: 3,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1521073238/group3_b8a9i9.png"
}

groups << {
  name: 'Ember.js Seattle',
  description: 'MicroObject Development is an approach to Object Oriented Programming with Single Responsibility as the core principle guiding principle for how behavior is encapsulated. This core principle is supported by Encapsulation, Behavior, and Immutability. Along with how microObjects uses these principles, Quinn will talk about hands-on-keyboard practices that he and other developers use to produce simple, maintainable, and easily testable code.',
  owner_id: 8,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1521073240/group4_edxgn0.png"
}

groups << {
  name: 'Seattle University Web Developers Meetup',
  description: 'FREE Excel & Power BI Clinic - Solving real world Excel and Power BI Problems occurs every third Thursday of each month from 9am to 10am Central African Time (CAT). Please register for the date and time that works best for you: Get your (on the Job) Excel & Power BI questions ready for our monthly live Clinic. David is a Power Pivot, DAX, Excel and Financial Modelling guru, he is also an ATD Master Trainer. He has taught over 4000 participants in the past 22 years of working with Excel and now also working Power BI since its beta launch as Power Pivot in Excel 2010. Learn how to apply Excel & Power BI tools to solve real-world challenges you face at work. This is distinct from the IT-centric approach to solving problems. Excel and Power BI are productivity tools afterall and not just IT software. Spaces are limited, so book your spot today and get your questions ready. This webinar runs every month. After registering, you will receive a confirmation email containing information about joining the webinar.',
  owner_id: 2,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1521073238/group5_wmzi9d.png"
}

groups << {
  name: 'Seattle Artificial Intelligence Meetup',
  description: 'Complete your Thursday with Seattle Artificial Intelligence Meetup! Enjoy food from different culture & mingle with our growing TECH community. ENJOY, LEARN & CELEBRATE THE DIFFERENCE ! ABOUT OUR TECH FRIENDLY COMMUNITY extraSlice is more than just a co-working space, it’s a Tech Innovation Place that embraces 3Cs – Community. Culture. Collaboration . Our purpose is to create an environment that allows you to focus on what’s really important, getting your work done, meet interesting people and learning. All these in one place!',
  owner_id: 3,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1521073238/group7_kcd4hh.png"
}

groups << {
  name: 'Hack Night @ ATLAS Workbase',
  description: 'Beginner or experienced developer, come join us at ATLAS Workbase to work on whatever coding project you would like to work on. If you are looking for some guidance, we will try to help you with that too!',
  owner_id: 8,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1521073237/group1_mjgwdn.png"
}

groups << {
  name: 'Seattle Apache Flink Meetup 2',
  description: 'Years ago when deploying software you would have to follow a tedious multistep process. A process which would fail under the smallest of errors and inevitably there were errors. Luckily today there are tools to automate not old the deployment process but also the build process. This allows teams and individuals to setup and use continuous integration and continuous deployment. We’ll explore setting up a Git repository, automating builds and deployments from that repository, setting up project work and bug tracking, and creating load tests to measure performance. Microsoft Visual Studio Team Services (https://docs.microsoft.com/en-us/vsts/user-guide/what-is-vsts) is a cloud service for collaborating on code development. It provides an integrated set of features that you access through your web browser or IDE client, including: Git repositories for source control of your codeBuild and release management to support continuous integration and delivery of your apps. Agile tools to support planning and tracking your work, code defects, and issues using Kanban and Scrum methods. A variety of tools to test your apps, including manual/exploratory testing, load testing, and continuous testing. Highly customizable dashboards for sharing progress and trends. Built-in wiki for sharing information with your team.',
  owner_id: 8,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1521073237/group1_mjgwdn.png"
}

groups << {
  name: 'Learn Code in Seattle (Flatiron School Study Groups) 2',
  description: 'NSCoder Night is held every Tuesday evening at Wayward Coffeehouse. It is an informal gathering of Mac and iOS application developers where people can code, talk shop, ask and answer questions, and find some willing victims for project demonstrations. There is no program, and there is a wide range of experience levels. You will find us spread over several tables in the back. We are generally there from about 7 until about 10, with people dropping in all through the evening. No RSVP is needed for this event. It is very informal. Everyone is welcome for all or part of the evening. Bring your MacBook and your iOS or Mac applications in development. Experience levels vary from raw beginner to seasoned expert, and attendance is typically 10 to 20 people.',
  owner_id: 2,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1521073236/group2_hbibg9.png"
}

groups << {
  name: 'WordPress Developers (restarting for 2018!) 2: Advanced Custom Fields deep-dive',
  description: 'We are relaunching the WordPress Developer meetup. Join us on March 13th at WeWork in South Lake Union to get into the code side of WordPress, from plugins, to themes, and beyond. Learn something new, network with your fellow developers, share what you’d like to see at the next Developer Meetup, and help us build a better WordPress developer community here in Seattle. Healthy websites change over time just like healthy businesses do. As developers, it is our job to empower website admins, and make our sites more maintainable. This talk shares design patterns and best practices you will find invaluable when creating custom themes for clients, and demonstrates how to implement them using Advanced Custom Fields (ACF). ACF is a powerful development tool used to easily manage custom fields and data. Since the possibilities are endless, we will explore a handful of specific examples.',
  owner_id: 3,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1521073238/group3_b8a9i9.png"
}

groups << {
  name: 'Ember.js Seattle 2',
  description: 'MicroObject Development is an approach to Object Oriented Programming with Single Responsibility as the core principle guiding principle for how behavior is encapsulated. This core principle is supported by Encapsulation, Behavior, and Immutability. Along with how microObjects uses these principles, Quinn will talk about hands-on-keyboard practices that he and other developers use to produce simple, maintainable, and easily testable code.',
  owner_id: 8,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1521073240/group4_edxgn0.png"
}

groups << {
  name: 'Webinar - Excel and Power BI Clinic 2)',
  description: 'FREE Excel & Power BI Clinic - Solving real world Excel and Power BI Problems occurs every third Thursday of each month from 9am to 10am Central African Time (CAT). Please register for the date and time that works best for you: Get your (on the Job) Excel & Power BI questions ready for our monthly live Clinic. David is a Power Pivot, DAX, Excel and Financial Modelling guru, he is also an ATD Master Trainer. He has taught over 4000 participants in the past 22 years of working with Excel and now also working Power BI since its beta launch as Power Pivot in Excel 2010. Learn how to apply Excel & Power BI tools to solve real-world challenges you face at work. This is distinct from the IT-centric approach to solving problems. Excel and Power BI are productivity tools afterall and not just IT software. Spaces are limited, so book your spot today and get your questions ready. This webinar runs every month. After registering, you will receive a confirmation email containing information about joining the webinar.',
  owner_id: 2,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1521073238/group5_wmzi9d.png"
}

groups << {
  name: 'Seattle Artificial Intelligence Meetup 2',
  description: 'Complete your Thursday with Seattle Artificial Intelligence Meetup! Enjoy food from different culture & mingle with our growing TECH community. ENJOY, LEARN & CELEBRATE THE DIFFERENCE ! ABOUT OUR TECH FRIENDLY COMMUNITY extraSlice is more than just a co-working space, it’s a Tech Innovation Place that embraces 3Cs – Community. Culture. Collaboration . Our purpose is to create an environment that allows you to focus on what’s really important, getting your work done, meet interesting people and learning. All these in one place!',
  owner_id: 3,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1521073238/group7_kcd4hh.png"
}

groups << {
  name: 'Hack Night @ ATLAS Workbase 2',
  description: 'Beginner or experienced developer, come join us at ATLAS Workbase to work on whatever coding project you would like to work on. If you are looking for some guidance, we will try to help you with that too!',
  owner_id: 8,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1521073237/group1_mjgwdn.png"
}

groups << {
  name: 'Seattle Apache Flink Meetup 3',
  description: 'Years ago when deploying software you would have to follow a tedious multistep process. A process which would fail under the smallest of errors and inevitably there were errors. Luckily today there are tools to automate not old the deployment process but also the build process. This allows teams and individuals to setup and use continuous integration and continuous deployment. We’ll explore setting up a Git repository, automating builds and deployments from that repository, setting up project work and bug tracking, and creating load tests to measure performance. Microsoft Visual Studio Team Services (https://docs.microsoft.com/en-us/vsts/user-guide/what-is-vsts) is a cloud service for collaborating on code development. It provides an integrated set of features that you access through your web browser or IDE client, including: Git repositories for source control of your codeBuild and release management to support continuous integration and delivery of your apps. Agile tools to support planning and tracking your work, code defects, and issues using Kanban and Scrum methods. A variety of tools to test your apps, including manual/exploratory testing, load testing, and continuous testing. Highly customizable dashboards for sharing progress and trends. Built-in wiki for sharing information with your team.',
  owner_id: 8,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1521073237/group1_mjgwdn.png"
}

groups << {
  name: 'Learn Code in Seattle (Flatiron School Study Groups) 3',
  description: 'NSCoder Night is held every Tuesday evening at Wayward Coffeehouse. It is an informal gathering of Mac and iOS application developers where people can code, talk shop, ask and answer questions, and find some willing victims for project demonstrations. There is no program, and there is a wide range of experience levels. You will find us spread over several tables in the back. We are generally there from about 7 until about 10, with people dropping in all through the evening. No RSVP is needed for this event. It is very informal. Everyone is welcome for all or part of the evening. Bring your MacBook and your iOS or Mac applications in development. Experience levels vary from raw beginner to seasoned expert, and attendance is typically 10 to 20 people.',
  owner_id: 2,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1521073236/group2_hbibg9.png"
}

groups << {
  name: 'Seattle Data Science 3',
  description: 'We are relaunching the WordPress Developer meetup. Join us on March 13th at WeWork in South Lake Union to get into the code side of WordPress, from plugins, to themes, and beyond. Learn something new, network with your fellow developers, share what you’d like to see at the next Developer Meetup, and help us build a better WordPress developer community here in Seattle. Healthy websites change over time just like healthy businesses do. As developers, it is our job to empower website admins, and make our sites more maintainable. This talk shares design patterns and best practices you will find invaluable when creating custom themes for clients, and demonstrates how to implement them using Advanced Custom Fields (ACF). ACF is a powerful development tool used to easily manage custom fields and data. Since the possibilities are endless, we will explore a handful of specific examples.',
  owner_id: 3,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1521073238/group3_b8a9i9.png"
}

groups << {
  name: 'Ember.js Seattle 3',
  description: 'MicroObject Development is an approach to Object Oriented Programming with Single Responsibility as the core principle guiding principle for how behavior is encapsulated. This core principle is supported by Encapsulation, Behavior, and Immutability. Along with how microObjects uses these principles, Quinn will talk about hands-on-keyboard practices that he and other developers use to produce simple, maintainable, and easily testable code.',
  owner_id: 8,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1521073240/group4_edxgn0.png"
}

groups << {
  name: 'Seattle University Web Developers Meetup 3',
  description: 'FREE Excel & Power BI Clinic - Solving real world Excel and Power BI Problems occurs every third Thursday of each month from 9am to 10am Central African Time (CAT). Please register for the date and time that works best for you: Get your (on the Job) Excel & Power BI questions ready for our monthly live Clinic. David is a Power Pivot, DAX, Excel and Financial Modelling guru, he is also an ATD Master Trainer. He has taught over 4000 participants in the past 22 years of working with Excel and now also working Power BI since its beta launch as Power Pivot in Excel 2010. Learn how to apply Excel & Power BI tools to solve real-world challenges you face at work. This is distinct from the IT-centric approach to solving problems. Excel and Power BI are productivity tools afterall and not just IT software. Spaces are limited, so book your spot today and get your questions ready. This webinar runs every month. After registering, you will receive a confirmation email containing information about joining the webinar.',
  owner_id: 2,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1521073238/group5_wmzi9d.png"
}

groups << {
  name: 'Seattle Artificial Intelligence Meetup 3',
  description: 'Complete your Thursday with Seattle Artificial Intelligence Meetup! Enjoy food from different culture & mingle with our growing TECH community. ENJOY, LEARN & CELEBRATE THE DIFFERENCE ! ABOUT OUR TECH FRIENDLY COMMUNITY extraSlice is more than just a co-working space, it’s a Tech Innovation Place that embraces 3Cs – Community. Culture. Collaboration . Our purpose is to create an environment that allows you to focus on what’s really important, getting your work done, meet interesting people and learning. All these in one place!',
  owner_id: 3,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1521073238/group7_kcd4hh.png"
}

groups << {
  name: 'Hack Night @ ATLAS Workbase 3',
  description: 'Beginner or experienced developer, come join us at ATLAS Workbase to work on whatever coding project you would like to work on. If you are looking for some guidance, we will try to help you with that too!',
  owner_id: 8,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1521073237/group1_mjgwdn.png"
}

groups << {
  name: 'Seattle Apache Flink Meetup 4',
  description: 'Years ago when deploying software you would have to follow a tedious multistep process. A process which would fail under the smallest of errors and inevitably there were errors. Luckily today there are tools to automate not old the deployment process but also the build process. This allows teams and individuals to setup and use continuous integration and continuous deployment. We’ll explore setting up a Git repository, automating builds and deployments from that repository, setting up project work and bug tracking, and creating load tests to measure performance. Microsoft Visual Studio Team Services (https://docs.microsoft.com/en-us/vsts/user-guide/what-is-vsts) is a cloud service for collaborating on code development. It provides an integrated set of features that you access through your web browser or IDE client, including: Git repositories for source control of your codeBuild and release management to support continuous integration and delivery of your apps. Agile tools to support planning and tracking your work, code defects, and issues using Kanban and Scrum methods. A variety of tools to test your apps, including manual/exploratory testing, load testing, and continuous testing. Highly customizable dashboards for sharing progress and trends. Built-in wiki for sharing information with your team.',
  owner_id: 8,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1521073237/group1_mjgwdn.png"
}

groups << {
  name: 'Learn Code in Seattle (Flatiron School Study Groups) 4',
  description: 'NSCoder Night is held every Tuesday evening at Wayward Coffeehouse. It is an informal gathering of Mac and iOS application developers where people can code, talk shop, ask and answer questions, and find some willing victims for project demonstrations. There is no program, and there is a wide range of experience levels. You will find us spread over several tables in the back. We are generally there from about 7 until about 10, with people dropping in all through the evening. No RSVP is needed for this event. It is very informal. Everyone is welcome for all or part of the evening. Bring your MacBook and your iOS or Mac applications in development. Experience levels vary from raw beginner to seasoned expert, and attendance is typically 10 to 20 people.',
  owner_id: 2,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1521073236/group2_hbibg9.png"
}

groups << {
  name: 'Seattle Data Science 4',
  description: 'We are relaunching the WordPress Developer meetup. Join us on March 13th at WeWork in South Lake Union to get into the code side of WordPress, from plugins, to themes, and beyond. Learn something new, network with your fellow developers, share what you’d like to see at the next Developer Meetup, and help us build a better WordPress developer community here in Seattle. Healthy websites change over time just like healthy businesses do. As developers, it is our job to empower website admins, and make our sites more maintainable. This talk shares design patterns and best practices you will find invaluable when creating custom themes for clients, and demonstrates how to implement them using Advanced Custom Fields (ACF). ACF is a powerful development tool used to easily manage custom fields and data. Since the possibilities are endless, we will explore a handful of specific examples.',
  owner_id: 3,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1521073238/group3_b8a9i9.png"
}

groups << {
  name: 'Ember.js Seattle 4',
  description: 'MicroObject Development is an approach to Object Oriented Programming with Single Responsibility as the core principle guiding principle for how behavior is encapsulated. This core principle is supported by Encapsulation, Behavior, and Immutability. Along with how microObjects uses these principles, Quinn will talk about hands-on-keyboard practices that he and other developers use to produce simple, maintainable, and easily testable code.',
  owner_id: 8,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1521073240/group4_edxgn0.png"
}

groups << {
  name: 'Seattle University Web Developers Meetup 4',
  description: 'FREE Excel & Power BI Clinic - Solving real world Excel and Power BI Problems occurs every third Thursday of each month from 9am to 10am Central African Time (CAT). Please register for the date and time that works best for you: Get your (on the Job) Excel & Power BI questions ready for our monthly live Clinic. David is a Power Pivot, DAX, Excel and Financial Modelling guru, he is also an ATD Master Trainer. He has taught over 4000 participants in the past 22 years of working with Excel and now also working Power BI since its beta launch as Power Pivot in Excel 2010. Learn how to apply Excel & Power BI tools to solve real-world challenges you face at work. This is distinct from the IT-centric approach to solving problems. Excel and Power BI are productivity tools afterall and not just IT software. Spaces are limited, so book your spot today and get your questions ready. This webinar runs every month. After registering, you will receive a confirmation email containing information about joining the webinar.',
  owner_id: 2,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1521073238/group5_wmzi9d.png"
}

groups << {
  name: 'Seattle Artificial Intelligence Meetup 4',
  description: 'Complete your Thursday with Seattle Artificial Intelligence Meetup! Enjoy food from different culture & mingle with our growing TECH community. ENJOY, LEARN & CELEBRATE THE DIFFERENCE ! ABOUT OUR TECH FRIENDLY COMMUNITY extraSlice is more than just a co-working space, it’s a Tech Innovation Place that embraces 3Cs – Community. Culture. Collaboration . Our purpose is to create an environment that allows you to focus on what’s really important, getting your work done, meet interesting people and learning. All these in one place!',
  owner_id: 3,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1521073238/group7_kcd4hh.png"
}

groups << {
  name: 'Hack Night @ ATLAS Workbase 4',
  description: 'Beginner or experienced developer, come join us at ATLAS Workbase to work on whatever coding project you would like to work on. If you are looking for some guidance, we will try to help you with that too!',
  owner_id: 8,
  picture_url: "http://res.cloudinary.com/dylanpt16/image/upload/v1521073237/group1_mjgwdn.png"
}
locations = [
  {lat: 47.59392551032141, lng: -122.2954210960205},
  {lat: 47.59948194082594, lng: -122.31344554060058},
  {lat: 47.60839414897103, lng: -122.31018397443847},
  {lat: 47.59901892748712, lng: -122.30400416486816},
  {lat: 47.600176453151306, lng: -122.31499049299316},
  {lat: 47.59936618787536, lng: -122.32048365705566},
  {lat: 47.58709492277835, lng: -122.31138560407715},
  {lat: 47.601796946057185, lng: -122.30297419660644},
  {lat: 47.60769974574087, lng: -122.31378886335449},
  {lat: 47.61151884941966, lng: -122.30726573103027},
  {lat: 47.60574654620158, lng: -122.31207224958496},
  {lat: 47.588730151838895, lng: -122.31550547712402},
  {lat: 47.59289794377609, lng: -122.32065531843261},
  {lat: 47.61303759258633, lng: -122.33335826032715},
  {lat: 47.61512056200957, lng: -122.34142634504394},
  {lat: 47.61998050133359, lng: -122.34794947736816},
  {lat: 47.60690392301495, lng: -122.30211588972168},
  {lat: 47.60250575488373, lng: -122.31687876813965},
  {lat: 47.60285299212841, lng: -122.30520579450683},
  {lat: 47.61512056200957, lng: -122.34382960432129},
  {lat: 47.62252600355668, lng: -122.33267161481933},
  {lat: 47.61222752651438, lng: -122.30537745588379},
  {lat: 47.60458914377918, lng: -122.30709406965332},
  {lat: 47.59938051596381, lng: -122.30108592145996},
  {lat: 47.60169552568297, lng: -122.31327387922363},
  {lat: 47.61107026750146, lng: -122.33164164655761},
  {lat: 47.614541967714715, lng: -122.30795237653808},
  {lat: 47.601116782856714, lng: -122.30417582624511},
  {lat: 47.59590780931307, lng: -122.29662272565918},
  {lat: 47.60146402932075, lng: -122.31293055646972},
  {lat: 47.606556712659874, lng: -122.32065531843261},
  {lat: 47.606556712659874, lng: -122.30881068342285},
  {lat: 47.60030653214403, lng: -122.30846736066894},
  {lat: 47.60574654620158, lng: -122.31893870466308},
  {lat: 47.61176462598224, lng: -122.30932566755371},
  {lat: 47.602390008623345, lng: -122.30760905378418},
]

i = 0
groups.each do |group|
  Group.create!(group.merge(locations[i]))
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

postStrings = [
  "The meeting next week is cancelled..",
  "See you all tonight!",
  "There's an upcoming meeting this Friday!",
  "No meeting this week",
  "We have a special guest this meeting",
  "A reminder, there's a meeting this weekend"
]

replyStrings = [
  "See you all!",
  "Sure",
  "See you soon",
  "I cannot go. Sorry",
  "Thanks!"
]

groups.each do |group|
  postStrings.sample(rand(1..6)).each do |str|
    Announcement.create({
      group_id: group.id,
      user_id: group.owner_id,
      content: str
    })
  end
end

posts = Announcement.all

posts.each do |post|
  replyStrings.sample(rand(1..5)).each do |str|
    Reply.create({
      announcement_id: post.id,
      user_id: rand(1..40),
      content: str
    })
  end
end
