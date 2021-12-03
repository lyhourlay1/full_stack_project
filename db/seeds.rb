# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

User.destroy_all
Product.destroy_all
Order.destroy_all
Cart.destroy_all
Transaction.destroy_all
Review.destroy_all

demoUser = User.create({:username=> 'demo', :password=> 'password', :email=> 'email'})



product = Product.create({:product_name=> 'Gala Apples Fresh Produce Fruit, 3 LB Bag', :description=> '#RED GALA APPLES #JUICY #BURSTING WITH FLAVOR #EXCELLENT IN SALADS, :price=>18.14', :quantity=>10, :seller_name=> 'GALA APPLES At The Neighborhood Corner Store', :category=> 'food', :unit=>"per pack" })
product = Product.create({:product_name=> 'FRESH BANANAS FRESH FRUIT VEGETABLES PRODUCE PER LB', :description=> '#FRESH PRODUCE #1-3 BANANAS PER LB DEPENDING ON SIZE', :price=>5.99, :quantity=>10, :seller_name=> 'BANANA At The Neighborhood Corner Store', :category=> 'food', :unit=>"per lb" })
product = Product.create({:product_name=> 'Maine Lobster Now: 1.25 LB Live Maine Lobster (6 Lobsters)', :description=> '#Guaranteed Alive #Fresh, Wild Caught #Weight Range: 1.2 to 1.4 lbs #Antibiotic-Free #Sustainably Harvested', :price=>189.99, :quantity=>10, :seller_name=> 'Whole Food in Maine', :category=> 'food', :unit=>"per box" })

product = Product.create({:product_name=> 'Apple Watch Series 7 GPS, 41mm Starlight Aluminum Case with Starlight Sport Band - Regular', :description=> '#Always-on Retina display has nearly 20% more screen area than Series 6, making everything easier to see and use #The most crack-resistant front crystal yet on an Apple Watch, IP6X dust resistance, and swimproof design #Measure your blood oxygen with a powerful sensor and app #Take an ECG anytime, anywhere #Get high and low heart rate, and irregular heart rhythm notifications #Stay in the moment with the new Mindfulness app, and reach your sleep goals with the Sleep app #Track new tai chi and pilates workouts, in addition to favorites like running, yoga, swimming, and dance #Track your daily activity on Apple Watch, and see your trends in the Fitness app on iPhone #Sync your favorite music, podcasts, and audiobooks #Pay instantly and securely from your wrist with Apple Pay', :price=>300, :quantity=>10, :seller_name=> 'Apple', :category=> 'electronics', :unit=>"per item" })

product = Product.create({:product_name=> '2021 Apple iMac (24-inch, Apple M1 chip with 8‑core CPU and 7‑core GPU, 8GB RAM, 256GB)', :description=> '21.5-inch (diagonal) 1920-by-1080 resolution display #Seventh-generation dual-core Intel Core i5 processor #Intel Iris Plus Graphics 640 #Ultrafast SSD storage #Two Thunderbolt 3 (USB-C) ports', :price=>1300, :quantity=>4, :seller_name=> 'Apple', :category=> 'electronics', :unit=>"per item" })

product1 = Product.create({:product_name=> 'Mainstay 7-Piece Nonstick Cookware Set, Black', :description=> '#7-piece set includes: 2 saucepans, 1 Dutch oven, 1 saute pan, 3 lids #Tri-ply construction: 18/8 stainless-steel interior won’t react with food; pure aluminum core retains and evenly distributes heat; polished stainless-steel exterior provides strength and beauty; consists of 70% stainless steel and 30% aluminum #Nonstick cooking surface: durable Whitford Eclipse 3-layer nonstick coating ensures effortless food release and quick, easy cleanup #Sturdy handle: generous cast stainless-steel handle offers a secure, comfortable, heat-resistant hold and comes permanently secured with rivets for reliable strength #Versatile: wide, flat-bottomed profile works well for frying, searing, sautéing, and browning; low sides allow for sliding food easily from the pan to a plate #Use and care and warranty: suitable for all cooktops, including induction; oven-safe up to 500 degrees F (260 degrees C); dishwasher-safe; backed by an AmazonCommercial 1-year limited warranty', :price=>20.99, :quantity=>4, :seller_name=> 'DuPont TeFlon', :category=> 'house supplies', :unit=>"per set" })
product1.photos.attach(io: open('https://bamazon-dev.s3.us-west-1.amazonaws.com/christmasTree.jpg'), filename: "chirstmas.jpg")

product = Product.create({:product_name=> 'SHareconn 6ft Prelit Premium Artificial Hinged Christmas Pine Tree with 350 Warm White & Multi-Color Lights, 60 Pine Cones and Foldable Metal Stand, Perfect Choice for Xmas Decoration, 6 FT', :description=> '#This Dunhill Fir Full Pre-Lit Artificial Green Christmas Tree is 6.5 feet tall with a 51 inch base diameter. Featuring hundreds of individually crafted branch tips to create full bodied branches, this tree is designed to look and feel lifelike. #Features PowerConnect system and 900 Dual Color LED bulbs that can switch between white and multicolor lights. This feature includes a switch to control ten different light functions, allowing the bulbs to twinkle, flash or fade on either color setting. #This tree features pre-attached, hinged branches that drop down for a simple set-up and fold back in for quick and convenient storage. Set aside 45-60 minutes to properly shape the tree by peeling back the branches and pulling the tips apart. #Constructed with sturdy, high quality materials, hypo-allergenic, fire-resistant needles, this tree is built to bring holiday cheer for years to come. Includes a durable metal base. #At National Tree Company, we believe that special holiday memories don’t have to be far and few between. This Christmas season, let our decorations transform your home while you focus on creating more of those magical moments.', :price=>139.99, :quantity=>4, :seller_name=> 'SHareconn', :category=> 'house supplies', :unit=>"per item" })
