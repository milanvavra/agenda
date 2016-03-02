Object subclass: #MyAgenda
	instanceVariableNames: 'varFileName varItemCategories varCategoryItems varCategoryItems1 varCategories1 varCategories2 varItems2 varItems2ListSelectedIndex varCategories4 varCategories5 varCategoriesSelected varOrCategories varNotCategories varInstancesDictionary'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MyAgenda'!
!MyAgenda commentStamp: 'MilanVavra 5/8/2015 01:31' prior: 0!
MyItemManager new askOpen.

Dictionary of Sets
askItemCategories
askCategoryItems

Set
askCategories1
askCategories2
askItems2
askCategories4
askCategories5

OrderedCollection
askCategories1List
askCategories2List
askItems2List
askCategories4List
askCategories5List


MyAgenda askComputeValueKeysFromKeyValues:
	( MyAgenda askComputeCategorySubcategoriesFromCategoryItems:
		MyAgenda askAgenda askCategoryItems1)

tmpDictionary := Dictionary new.
tmpSet := MyAgenda askAgenda askCategoryItems keys.
tmpSet do: [ :tmpCategory |
	 tmpDictionary at: tmpCategory askCategoryText put: tmpCategory ].
tmpDictionary.
!


