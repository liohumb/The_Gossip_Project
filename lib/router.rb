require 'controller'

class Router

#On veut qu'un "Router.new" lancé par app.rb, crée automatique une instance "@controller"
  def initialize
    @controller =  Controller.new
  end

#rappelle-toi que l'on fait "Router.new.perform" dans app.rb => après initialize, on définit donc perform.
  def perform
    system("clear")

    puts "——————————————————————————————————————————————————"
    puts "• /|\\/|\\ BIENVENUE DANS THE GOSSIP PROJECT/|\\/|\\ •"
    puts "——————————————————————————————————————————————————"

    while true

      #on affiche le menu
      puts ""
      puts "Tu veux faire quoi jeune mouss' ?".center(50).green
      puts ""
      puts "• › " + "1".blue + " ‹ •  Je veux créer un gossip"
      puts "• › " + "4".red + " ‹ •  Je veux quitter l'app"
      puts ""
      print "•    › ".green
      params = gets.chomp.to_i #on attend le choix de l'utilisateur

      case params #en fonction du choix
      when 1
        puts ""
        puts "Tu as choisi de créer un gossip".center(50)
        @controller.create_gossip

      when 4
        puts "——————————————————————————————————————————————————"
        puts "|\\|/|\\|/|\\|/|\\|/|\\|/|\\|/|\\|/|\\|/|\\|/|\\|/|\\|/|\\|/|\\"
        puts "• \\|/\\/|\\/ Ton secret sera bien gardé ! \\|/\\/|\\/ •"
        puts "• \\|/\\/|\\/         " + "À BIENTÔT !".green + "          \\|/\\/|\\/ •"
        puts "|\\|/|\\|/|\\|/|\\|/|\\|/|\\|/|\\|/|\\|/|\\|/|\\|/|\\|/|\\|/|\\"
        puts "——————————————————————————————————————————————————"

        puts ""
        break #Ce "break" permet de sortir de la boucle while. C'est même la seule façon d'en sortir.

      else
        puts ""
        puts "Ce choix n'existe pas, merci de ressayer".center(50).red #Si l'utilisateur saisit une entrée non prévue, il retourne au début du "while true".
        puts ""
        #C'est pour ça que la boucle est infinie: potentiellement, il peut se gourer jusqu'à la fin des temps :)

      end
    end
  end
end
