# Specifications for the CLI Assessment
I've created a Gem Florist which scrapes the flower deals from https://www.florist.com
Specs:
- [X] Have a CLI for interfacing with the application
     In lib/cli.rb I've created a very interactive interface which prompts user for the input and
     then swiches the control according to the input by creating an object of that class and transferring control
      to that class to execute the rest of code.
- [X] Pull data from an external source
    Each class serves the user by fetching data from the external website i.e Florist in this case and then scrapes the data and stores in the form of hashes(key,value pairs) and finall stores these hashes in an array.
- [X] Implement both list and detail views

    Finally using modular structure a user is provided all the current deals and then their selection is displayed in a user friendly manner.
