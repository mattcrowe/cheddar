# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def add_entries(client, task)
  rand(1...5).times do |i|
    Entry.create!(task_id: task.id, hours: rand(0...7) + [0.25, 0.5, 0.75, 1].sample, rate: client.rate, done_at: Time.now - rand(1...90).day)
  end
end

client = Client.create!(name: "Bob's Donuts", contact: "Finn", email: "finn@bobsdonuts.com", rate: 65.00)

project = Project.create!(client_id: client.id, name: 'Home Page')
task = Task.create!(project_id: project.id, name: 'Development')
add_entries(client, task)
task = Task.create!(project_id: project.id, name: 'CSS Bug')
add_entries(client, task)
task = Task.create!(project_id: project.id, name: 'Sprinkle Image')
add_entries(client, task)

project = Project.create!(client_id: client.id, name: 'Sugary Lander')
task = Task.create!(project_id: project.id, name: 'Development')
add_entries(client, task)
task = Task.create!(project_id: project.id, name: 'Maintenance')
add_entries(client, task)

project = Project.create!(client_id: client.id, name: 'Adventure Feature')
task = Task.create!(project_id: project.id, name: 'Development')
add_entries(client, task)
task = Task.create!(project_id: project.id, name: 'Maintenance')
add_entries(client, task)

client.invoice_open_entries(Time.now - 90.days)
client.invoice_open_entries(Time.now - 60.days)
client.invoice_open_entries(Time.now - 30.days)
client.invoice_open_entries

Payment.create(client_id:client.id, paid_at:Time.now, total: client.owed * rand(0.6...0.8).round(2))

client = Client.create!(name: "Taco Hut", contact: "Jeffrey Barnes", email: "jeffster@tacohut.com", rate: 65.00)

project = Project.create!(client_id: client.id, name: 'New Web Site')
task = Task.create!(project_id: project.id, name: 'Development')
add_entries(client, task)
task = Task.create!(project_id: project.id, name: 'Maintenance')
add_entries(client, task)

project = Project.create!(client_id: client.id, name: 'Map Feature')
task = Task.create!(project_id: project.id, name: 'Development')
add_entries(client, task)
task = Task.create!(project_id: project.id, name: 'Maintenance')
add_entries(client, task)

client.invoice_open_entries(Time.now - 90.days)
client.invoice_open_entries(Time.now - 60.days)
client.invoice_open_entries(Time.now - 30.days)
client.invoice_open_entries

Payment.create(client_id:client.id, paid_at:Time.now, total: client.owed * rand(0.6...0.8).round(2))

client = Client.create!(name: "Daily Planet", contact: "C Kent", email: "ckent@dailyplanet.com", rate: 40.00)

project = Project.create!(client_id: client.id, name: 'Contact Page')
task = Task.create!(project_id: project.id, name: 'Development')
add_entries(client, task)
task = Task.create!(project_id: project.id, name: 'Maintenance')
add_entries(client, task)

project = Project.create!(client_id: client.id, name: 'Tracking Feature')
task = Task.create!(project_id: project.id, name: 'Development')
add_entries(client, task)
task = Task.create!(project_id: project.id, name: 'Maintenance')
add_entries(client, task)

client.invoice_open_entries(Time.now - 90.days)
client.invoice_open_entries(Time.now - 60.days)
client.invoice_open_entries(Time.now - 30.days)
client.invoice_open_entries

Payment.create(client_id:client.id, paid_at:Time.now, total: client.owed * rand(0.6...0.8).round(2))