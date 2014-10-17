class Micropost < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
<<<<<<< HEAD
  validates :movie_ref, presence: true
  validates :title, presence: true
  validates :year, presence: true

  validate :content_must_be_a_haiku

=======
>>>>>>> following-users

  def Micropost.from_users_followed_by(user)
    following_ids = "SELECT followed_id FROM relationships
                     WHERE  follower_id = :user_id"
    where("user_id IN (#{following_ids}) OR user_id = :user_id",
          user_id: user)
  end

<<<<<<< HEAD
    def content_must_be_a_haiku
    
    require_relative 'dictionary.rb'

    num_of_syllables_in_each_line = []

    array_of_lines = content.strip.lines.map(&:chomp)


    array_of_lines.each do |line|

      array_of_syllables = []

      array_of_content = line.downcase.gsub(/[^a-z\s]/i, '').split

      array_of_content.each do |word|
        if !$dictionary[word].nil?
        array_of_syllables << $dictionary[word] 
        else 
        array_of_syllables << count_if_not_in_dictionary(word)
        
      end

      end

      num_of_syllables_in_each_line << array_of_syllables.inject(:+)

    end



    if num_of_syllables_in_each_line[0].nil? || num_of_syllables_in_each_line[0] != 5 
      errors.add(:content, "error: double check the syllables in the first line!")
    end
    if num_of_syllables_in_each_line[1].nil? || num_of_syllables_in_each_line[1] != 7 
      errors.add(:content, "error: double check the syllables in the second line!")
    end
    if num_of_syllables_in_each_line[2].nil? || num_of_syllables_in_each_line[2] != 5 
      errors.add(:content, "error: double check the syllables in the third line!")
    end
    if num_of_syllables_in_each_line.count > 3
      errors.add(:content, "error: looks like you have more than three lines")
    end
    

  end


  def count_if_not_in_dictionary(word)
    # assume 3 letter words are 1 syllable
    return 1 if word.length <= 3

    # take out -es, -ed, and -e at the end of words (unless -e is actually -le)
    word.sub!(/(?:[^laeiouy]es|ed|[^laeiouy]e)$/, '')

    #take out the y if it starts a word
    word.sub!(/^y/, '')

    # count the number of consecutive vowels (where y is considered a vowel)
    word.scan(/[aeiouy]{1,2}/).size

  end


end
=======

end
>>>>>>> following-users
