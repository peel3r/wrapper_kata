Wrapper
=

Write a class called Wrapper with a single method named wrap that takes two arguments, string and length.

This function should return a string, but with line breaks inserted at just the right places to make sure that no line is longer than the length. Break the line at the last possible space or hyphen, or otherwise by splitting the word.

Initial class (Ruby)
=

    class Wrapper

      #Wrap the given string so that each line is at longest `length`
      #long. Lines are split at the last space or hyphen, or otherwise
      #when the length is met.
      #@param string [String] The string to wrap
      #@param length [Integer] The longest line length
      #@return [String] wrapped string

      def wrap(string, length)
      end

    end

Deliverables
=

1. Using TDD, complete the Wrapper class. Use a source control tool to show your working, and deliver the complete repo at the end.

2. We'd like to make Wrapper as a Service. Please describe what the API endpoints could look like, including example requests and responses.

example requests and responses
=

    https://api.example.com/wrapper

    curl -X POST -d "string=value1&length=value2" https://api.example.com/wrapper
