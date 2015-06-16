# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


r1 = Role.create({name: "Advisory Board", description: "Can read and create comments. Can update and destroy own comments"})
r2 = Role.create({name: "Instructor", description: "Can read and create grades. Can update and destroy own grades"})
r3 = Role.create({name: "Admin", description: "Can perform any CRUD operation on any resource"})



u1 = User.create({first_name: "Sally", last_name: "Jones", email: "sally@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r1.id})
u2 = User.create({first_name: "Emily", last_name: "Wang", email: "antongshu@gmail.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r1.id})
u3 = User.create({first_name: "Sue", last_name: "Jones", email: "sue@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r1.id})
u4 = User.create({first_name: "Weila", last_name: "Jones", email: "weila@gmail.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r2.id})
u5 = User.create({first_name: "Owen", last_name: "Jones", email: "Owen@gmail.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r2.id})
u6 = User.create({first_name: "Kev", last_name: "Jones", email: "kev@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r2.id})
u7 = User.create({first_name: "Jay", last_name: "Xu", email: "sgliv8@gmail.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r3.id})
u8 = User.create({first_name: "Bill", last_name: "Keough", email: "wkeough@uw.edu", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r3.id})



c1 = Comment.create({group: "1", project: "Stylish shades", strength: "Ethical DIY fixie artisan. Heirloom Vice mumblecore, DIY pork belly Tumblr skateboard kogi PBR typewriter Marfa health goth", weakness: "Tumblr skateboard kogi PBR typewriter Marfa health goth", improvement: "DIY pork belly Tumblr skateboard kogi PBR typewriter Marfa health", fund: "yes", user_id: u1.id})
c1 = Comment.create({group: "1", project: "Stylish shades", strength: "cred bitters lo-fi pop-up squid. Farm-to-table Schlitz artisan Austin bespoke, sartorial sustainable normcore. DIY pug synth, Blue Bottle heirloom banjo tilde", weakness: "Tumblr skateboard kogi PBR typewriter Marfa health goth", improvement: "DIY pork belly Tumblr skateboard kogi PBR typewriter Marfa health", fund: "yes", user_id: u2.id})
c1 = Comment.create({group: "1", project: "Stylish shades", strength: "cDirect trade biodiesel skateboard street art tousled PBR&B Austin, Odd Future freegan migas cray aesthetic.", weakness: "Tumblr skateboard kogi PBR typewriter Marfa health goth", improvement: "DIY pork belly Tumblr skateboard kogi PBR typewriter Marfa health", fund: "yes", user_id: u3.id})

g1 = Grade.create({group: "1", project: "Stylish shades", opport: "3", opport_c: "Titer Marfa health goth", cost: "4", cost_c: "Marfa health goth", timeline: "3", timeline_c: "skateboard kogi PBR typewriter Marfa health", obstacle: "4", obstacle_c: "Health goth mlkshk whatever narwhal", risk: "4", risk_c: "reegan migas cray aesthetic.", point: "5", point_c:"h goth mlkshk", fund: "5", fund_c: "annel four dollar toast fingerstache", user_id: u4.id})

g2 = Grade.create({group: "1", project: "Stylish shades", opport: "2", opport_c: "Titer Marfa health goth", cost: "4", cost_c: "Marfa health goth", timeline: "2", timeline_c: "skateboard kogi PBR typewriter Marfa health", obstacle: "4", obstacle_c: "Health goth mlkshk whatever narwhal", risk: "5", risk_c: "reegan migas cray aesthetic.", point: "4", point_c:"h goth mlkshk", fund: "2", fund_c: "annel four dollar toast fingerstache", user_id: u5.id})

g3 = Grade.create({group: "1", project: "Stylish shades", opport: "5", opport_c: "Titer Marfa health goth", cost: "3", cost_c: "Marfa health goth", timeline: "5", timeline_c: "skateboard kogi PBR typewriter Marfa health", obstacle: "3", obstacle_c: "Health goth mlkshk whatever narwhal", risk: "3", risk_c: "reegan migas cray aesthetic.", point: "3", point_c:"h goth mlkshk", fund: "4", fund_c: "annel four dollar toast fingerstache", user_id: u6.id})


