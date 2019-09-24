rspec-snippets
==============

## Description ##

Snippets for rspec

## Requirments ##

* emacs
* yasnippet(0.8 later)
* ruby-mode
* rspec-mode

## Install ##

```
   git clone https://github.com/tomiacannondale/rspec-yasnippets.git rspec-mode
```

Write to init.el the following code.

``` elisp
    (eval-after-load 'rspec-mode
      (yas-load-directory "<rspec-mode-snippets-installed-directory>"))
```

## License ##

MIT License
