# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# admin
if Rails.env.development?
	if AdminUser.all.size > 0
		AdminUser.destroy_all
		# reset primary key
		ActiveRecord::Base.connection.reset_pk_sequence!(AdminUser.table_name)
	end

	AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
end

# Landing Config
if LandingConfig.all.size > 0
	LandingConfig.destroy_all
	# reset primary key
	ActiveRecord::Base.connection.reset_pk_sequence!(LandingConfig.table_name)
end

configs = {
	full_name: "Avid Maulana Saputra",
  job_title: "Web Developer",
  email: "avidmaulanas@gmail.com",
  phone: "+62 85 228 399 177",
  about_me: "Web programming is my passion. I love Ruby and Rails. It's make me happy to coding. The opportunity to learn new skills and work with new technologies is particularly attractive to me.",
  address: "Jl. Bangbayang No. 42/157c Coblong Bandung 40134, West Java"
}

LandingConfig.create!(configs)

# Skills
if Skill.all.size > 0
	Skill.destroy_all
	# reset primary key
	ActiveRecord::Base.connection.reset_pk_sequence!(Skill.table_name)
end

skills = [
	{title: "Ruby", score: 95},
	{title: "Ruby on Rails", score: 90},
	{title: "HTML", score: 95},
	{title: "CSS", score: 85},
	{title: "Javascript", score: 85}
]

Skill.create!(skills)