require "yaml"
require_relative 'wordplay'

class Bot
    attr_reader :name

    def initialize(options)
        @name = options[:name] || "Unamed Bot"
        begin
            @data = YAML.load(File.read(options[:data_file]))
        rescue
            raise "Can't load bot data"
        end
    end

    def greeting
        random_response :greeting
    end

    def farewell
        random_response :farewell
    end

    def response_to(input)
        prepared_input = preprocess(input.downcase)
        sentece = best_sentence(prepared_input)
        responses = possible_responses(sentence)
    end
    # --------------------- Private methods -------------------------
    private

    def random_response(key)
        random_index = rand(@data[:responses][key].length)
        @data[:responses][key][random_index].gsub(/\[name\]/, @name)
    end

    def preprocess(input)
        perform_substitutions input.downcase
    end

    def perform_substitutions(input)
        @data[:presubs].each do |s| 
            input.gsub!(s[0], s[1])        
        end
        input
    end

    def best_sentence(input)
        hot_words = @data[:responses].keys.select do |k|
            k.class == String && k =~ /^\w+$/
        end
        WordPlay.best_sentence(input.sentences, hot_words)
    end

    def possible_responses(response)
        responses = []
    end

end

bob = Bot.new(:name => "Bob", :data_file => File.open("bot_data"))
# puts bob.greeting
# puts bob.farewell

p bob.response_to("I Love sunshine!I dont understand.")





