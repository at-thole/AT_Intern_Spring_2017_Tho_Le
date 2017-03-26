#DAILY REPORT
####26-03-2017

####Inheritance
- Inheritance mean define classes base on existing classes.
- The class that is inheriting behavior is called the subclass and the class it inherits from is called the superclass.

```python
class A
  def initialize
    puts "Hello World"
  end
end
class B < A
end
```

####Module
- Module is a collection of methods, classes, and constant.
- Used as a namespace of class.

```python
module Example
  def put_hello
    puts "hello"
  end
end
```

**Include:**
Include has a limitation : it can only add instance methods to classes, not to class methods.
```python
module A
  def put_hello
    puts "hello"
  end
end

class B
  include A
end
B.new.put_hello
```

**Extend:**
Can use it to extend any object by adding methods and constants from a module.
```python
module A
  def put_hello
    puts "hello"
  end
end

class B
  extend A
end
B.put_hello
```
