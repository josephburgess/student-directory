# student-directory

This was a project from week three of the Makers pre-course that taught us to build a command line application from scratch. It is an application that can take user input and manage student information, including exporting/writing data to csv files for later reading/importing by the same application.

## How to use

From the root directory run:

```shell
ruby ./lib/directory.rb
```

## Extra functionality

The following additional features were added through refactoring and refinement, which were not part of the original exercise.

- [x] Allowing for input of additional information (e.g. birthplace, subject) direct in the cli

- [x] Filtering students (e.g. by first initial, birthplace, etc)

- [x] Allowing for custom filenames for saving, exporting and importing .csv files

- [x] Use of center() in string output

- [x] Use of 'colorize' gem to colour cli text output

- [x] Fixed cli output so that appropriate singular/plural ("student"/"students") is printed depending on number of students

- [x] Remove use of chomp()

- [x] Additional feedback for menu options

- [x] Add variables and defaults for filenames

- [x] Refactor file read and write methods

- [x] Refactoring each() methods to while or until loops

- [x] Add library for csv files

- [x] Split functionality/methods into separate .rb files for ease of navigation
