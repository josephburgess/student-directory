# student-directory

This was a project from week three of the Makers pre-course that taught us to build a command line application from scratch. It is an application that can take user input and manage student information, including exporting/writing data to csv files for later reading/importing by the same application.

## How to use

From the root directory run:

```shell
ruby ./lib/directory.rb
```

## Extra functionality

The following additional features were added through refactoring and refinement, which were not part of the original exercise.

1. [x] Allowing for input of additional information (e.g. birthplace, subject) direct in the cli

2. [x] Filtering students (e.g. by first initial, birthplace, etc)

3. [x] Allowing for custom filenames for saving, exporting and importing .csv files

4. [x] Use of center() in string output

5. [x] Use of 'colorize' gem to colour cli text output

6. [x] Switch between student / students depending on if only 1 student on register

7. [x] Remove use of chomp()

8. [x] Additional feedback for menu options

9. [x] Add variables and defaults for filenames

10. [x] Refactor file read and write methods

11. [x] Add library for csv files

12. [x] Split functionality/methods into separate .rb files for ease of navigation
