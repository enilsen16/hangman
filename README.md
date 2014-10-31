# Hangman

A version of hangman built using Ruby.

## Set-up Instructions

- Unzip Erik_Nilsen_Hangman.zip and cd into the directory
- Make sure to `bundle` to properly install all dependencies.
- `./bin/hangman` will run the program once
- if necessary allow execution permissions for ./bin/hangman by doing `chmod +x ./bin/hangman`


## Thoughts

Originally I set out to try to reinvent the wheel; however after taking a step back and looking at the goal of the program, I decided to test the most commonly used letters by iterating over an array. Using a BDD approach I tried to design a program that will return results quickly.

I later stumbled upon this:

![Frequently used letters](http://i.imgur.com/sRWxFQ2.png "Frequently Used Letters")

That table represents frequently used letters based on the size of the word. The problem here, though, is that the game uses phrases instead of single words and it is difficult to apply the table effectively.

I know now that a better solution would be to analyze the lengths of each word in the phrase, compare them against words that are the same length in a dictionary, and then make an educated guess about what the next letter will be. Another solution would be to create a DAFSA that chooses the next letter to guess based on the presence or absence of the previous guess.

## TODO
If I had more time, I would add these features:

- Refactor code into multiple files or even a gem
- Optimize algorithm to iterate over a dictionary file or use a DAFSA
- Cleanup and add more tests to better my test coverage
- Add interactivity to the game

## License

Copyright (c) 2014 Erik Nilsen

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
