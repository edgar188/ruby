class Wordplay
end

class String
    def sentences
        gsub(/\n|\r|\s+/, " ").split(/\.|\?|!|;/)
    end

    def words
        scan(/\w[\w\'\-]*/)
    end
end

p %q{Hello! This is a test of
    basic sentence splitting. It
    even works over multiple lines!}.sentences[2].words

# ============================= Word Matching =================================

hot_words = %w{test ruby great}
my_string = "This is a test. Dull sentence here. Ruby is great. So is cake."

