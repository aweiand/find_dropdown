<<<<<<< HEAD
# [2.0.1] - 2023.08.29
* Flutter 3.13.0 compatibility

# [2.0.0] - 2021.03.09
=======
# [1.0.1] - 2021.06.26
## Added clear selected items function
## Closed issues
#38

# [1.0.0] - 2021.03.09
>>>>>>> 6ea7619b0c4855f116e03dd3710624c9481936c2
## Migrated to NullSafety [[more]](https://events.flutter.dev/?gclid=Cj0KCQiAs5eCBhCBARIsAEhk4r75svPADe_vO0swK7h6UH92TloC8E_SZQJu_bLO78VqPo1nsS-RrngaAnhoEALw_wcB&gclsrc=aw.ds)
Following the Flutter 2.0, this package has been migrated to Null Safety
## Removed rxdart dependency.
Now, the content from rxdart is migrated to local, on the folder rxdart. 
This prevents incompatibilities between the version of rxdart in the project and the package.
## Deprecated searchHint field.
Use 'hintText' property from searchBoxDecoration

<<<<<<< HEAD
# [1.2.3] - 2021.01.05
## Added findController parameter to change onFind text by programmatically

# [1.2.1] - 2020.09.27
## Implemented multiple select items

# [1.2.0] - 2020.09.06
## Rx dart 0.24.x bump
## Implemented properties
 - searchBoxMaxLines
 - searchBoxMinLines
 - searchHint

# [1.1.0] - 2020.04.24
=======
# [0.2.3] - 2021.02.12
## Added searchHint property to change the hintText 


# [0.2.2] - 2020.09.27
## Updated select_dialog to 1.2.1
## Added multiple select items support
## Clear or update selection programmatically feature released

# [0.2.1] - 2020.09.06
## rxdart 0.24.x version bump
## Updated select_dialog to 1.2.0
## License updated (MIT)
## Added properties
 - labelVisible - _To show the label in field_
 - searchBoxMaxLines
 - searchBoxMinLines

# [0.2.0] - 2020.04.20
## Added `autofocus` property
>>>>>>> 6ea7619b0c4855f116e03dd3710624c9481936c2
## Added web size adaptation
![image](https://user-images.githubusercontent.com/16373553/80187452-0b7dfd80-85e6-11ea-9a8a-f9ff4c1092d9.png)

## Added callbacks
<<<<<<< HEAD
 - emptyBuilder [Closes #11]
=======
 - emptyBuilder
>>>>>>> 6ea7619b0c4855f116e03dd3710624c9481936c2
 - loadingBuilder
 - errorBuilder

## Added `constraints` property
![image](https://user-images.githubusercontent.com/16373553/80188549-b9d67280-85e7-11ea-8eb5-7de2b2e3dec5.png)

![image](https://user-images.githubusercontent.com/16373553/80188871-2cdfe900-85e8-11ea-9b7f-92cbada4af5b.png)

## Added in-code documentation
![image](https://user-images.githubusercontent.com/16373553/80191733-834f2680-85ec-11ea-8fef-b540c88d8d6c.png)

<<<<<<< HEAD
## Added `autofocus` property [Closes #5]

# [1.0.6+1] - 2019.09.28

* Common fix

# [1.0.6] - 2019.09.28

* Added searchBoxDecoration property

# [1.0.0+5] - 2019.09.27

* Added show or hide searchbox capability

# [1.0.0] - 2019.09.21

* Initial Commit
=======
# [0.1.7+1] - 2019.10.02
 * Updated bottom distance


# [0.1.7] - 2019.10.02
 * Updated clear button


# [0.1.6] - 2019.09.27

* Added show or hide searchbox capability
* Added clear feature
* Added searchBoxDecoration property

# [0.1.5+1] - 2019.09.26

* Updated README.md

# [0.1.5] - 2019.09.25

* Added parameter "validate"

# [0.1.4+1] - 2019.09.25

* Formatted file find_dropdown.dart

# [0.1.4] - 2019.09.25

* Updated README.md

# [0.1.3] - 2019.09.25

* Updated README.md

# [0.1.2] - 2019.09.25

* Updated git repository reference

# [0.1.1] - 2019.09.25

* Updated min. sdk version

# [0.1.0] - 2019.09.25

* First publication
>>>>>>> 6ea7619b0c4855f116e03dd3710624c9481936c2
