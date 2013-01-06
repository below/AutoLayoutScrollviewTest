AutoLayoutScrollviewTest
========================

*Copyright notice at the end of this document*

After a hint from @jaredsinclair, I changed the whole design to **UICollectionView**. This works rather nicely, for the most part.

But, there are still:

Questions
---------

Everything works well in portrait mode, but when I switch to landscape, everything is gone … what gives?

I presume something is wrong with the AutoLayout Constraints of the cell or its imageView, will check that next.

The hint I get from the console is: 

	the behavior of the UICollectionViewFlowLayout is not defined because:
	the item height must be less that the height of the UICollectionView minus the section insets top and bottom values.

The Fine Print
--------------

Code: Copyright (c) 2013 Alexander v. Below. All rights reserved.

This work is licensed under a [Creative Commons Attribution-ShareAlike 3.0 Unported License](http://creativecommons.org/licenses/by-sa/3.0/).

Pictures, used unter [Creative Commons Attribution-ShareAlike 2.0 Generic License](http://creativecommons.org/licenses/by-sa/2.0/deed.en)

http://www.flickr.com/photos/ioerror/104101285/ (Preview restricted)

Copyright (c) Jacob Appelbaum


![IMG_6248](http://farm3.staticflickr.com/2530/3963425300_5c95e7ff20.jpg "IMG_6248 by erenemre, on Flickr")

Copyright (c) Erin Emre Kasal
