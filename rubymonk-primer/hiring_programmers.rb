# We are looking to hire experienced Ruby programmers. Our ideal candidate has 2 
# or more years of experience, but some programmers become really good even before that.
# We'll consider their Github points (a nice indicator of a good programmer), and even 
# if they are not experienced, candidates with 500 Github points or more can apply. 
# And there is one more catch: Ruby being a cool and awesome language, 
# a lot of smart youngsters are very good at it. We love those kids, 
# but for this particular job we'd rather have them study at school than work. 
# Let us filter out candidates who are younger than 15. Also we don't want to
# consider candidates who applied recently for this opening.

#  This is how a candidate object would look:

# candidate.years_of_experience = 4
#   candidate.github_points = 293
#   candidate.languages_worked_with = ['C', 'Ruby', 'Python', 'Clojure']
#   candidate.applied_recently? = false
#   candidate.age = 26

Candidate = Struct.new(:years_of_experience, :github_points, :age, :languages_worked_with, :applied_recently?)
candidate = Candidate.new(1, 500, 15, ['C', 'Ruby', 'Python'], true)

is_an_experienced_programmer = ((candidate.years_of_experience >= 2) || ( candidate.github_points >= 500 )) &&
 (candidate.age > 14) && (candidate.languages_worked_with.include?('Ruby')) && (!candidate.applied_recently?)

puts "Candidate is #{ is_an_experienced_programmer ? 'an experienced' : 'not an experienced'} programmer."