# require, load and autoloading in ruby as well as rails 

## Outine:
- $LOAD_PATH
  - ruby MRI 1.9.2 removes '.' from load path
  - Bundler adds gems to paths
- load
- require
- require_relative
- autoload (for speed)
  - Kernel#autoload
  - Module#autoload
- ruby constant resolution (constant namespaces)
- rails autoloading (avoid writing autoload 100 times and use magic instead)
- config.to_prepare


