class Question
     attr_accessor :cue, :answer
     def initialize(cue, answer)
          @cue = cue
          @answer = answer
     end
end

c1 = "How great is Kylash?\n(a)HEAPS\n(b)kinda\n(c)meh\n(d)not really"
c2 = "How smart is Kylash?\n(a)Kinda\n(b)Meh\n(c)VERY\n(d)Not at all"
c3 = "How tall is Kylash?\n(a)140cm\n(b)150cm\n(c)166cm\n(d)175cm"
c4 = "How rich is Kylash?\n(a)Kinda\n(b)Very\n(c)He's ballin, yo\n(d)Lol, he's broke"

questions = [
     Question.new(c1, "a"),
     Question.new(c2, "c"),
     Question.new(c3, "d"),
     Question.new(c4, "d")
]

system("clear")

def run_quiz(questions)
     answer = ""
     score = 0
     for question in questions
          puts question.cue
          answer = gets.chomp()
          if answer == question.answer
               score += 1
               if score == 4
               puts "You know Kylash really well, Good on you"
          end
     end
     puts "you got #{score} out of #{questions.length()}"
end
end
run_quiz(questions)
