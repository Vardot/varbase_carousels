# Varbase Carousels
---
This feature provides the base implementation for the carousels in your website.
Admins will be able to create carousels on the spot and place it anywhere in the
site.

---

Varbase Carousels requires the slick.min.js library.
Download it (https://github.com/kenwheeler/slick)
and place it in the libraries folder (/libraries)

To keep track of the library in your composer.json file of the project, you
could add:

```
  "repositories": [
    {
      "type": "composer",
      "url": "https://packages.drupal.org/8"
    },
    {
      "type": "package",
      "package": {
        "name": "kenwheeler/slick",
        "version": "1.6.0",
        "type": "drupal-library",
        "source": {
          "url": "https://github.com/kenwheeler/slick",
          "type": "git",
          "reference": "origin/master"
        }
      }
    }
  ],
```

And then in the require part: 


```
  "require": {
    "kenwheeler/slick": "1.6.0"
  }
```
