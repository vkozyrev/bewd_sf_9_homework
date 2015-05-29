![BEWD_Logo](../assets/BEWD_Logo.png)

##Resources: Sharing Behavior

Good code should be reused!

###Cheat Sheet

####load vs. require vs. include

Why do they all sound the same??!!!!

*	load: reads a file's contents and runs the code.
	*	File can be loaded more than once.

		```load 'config.rb'```

*	require: requires a class into another file
	*	File is only required once.

		```require 'config'```


####Inheritance
*	One class can inherit the capabilities of another using ```<``` *	Sub-class inherits from super-class (child class inherits from parent class)

*	If defined in different physical files, a child must require its parent-- lib/person.rb ---```ruby
	class Person	end

```--- lib/worker.rb ---```ruby
		require 'lib/person'	class Worker < Person	end
```

####Modules

Ruby exposes much core functionality through modulesA commonly used built in module is MathThe :: operator is used to refer to a constant set in a module```ruby
	puts Math.sqrt(9)
```
>3.0```ruby
	puts Math::PI
```
>3.1415926


*	A module is like a class, except 
	*	You cannot create a new instance of a module	*	You cannot extend a module to create a child module*	Modules are a way to add namespaces

Ruby docs have a full list of available modules.

__Method Scope__

```ruby
	class GA_course
		def initialize (course_name)
			@course_name = course_name
		end

		def announce_course
			puts "GA has a course on #{@course_name}"
		end
		
		def self.announce_courses
			puts "GA has a course on BEWD"
			puts "GA has a course on FEWD"
			puts "GA has a course on CSF"
			puts "GA has a course on DAT"
			puts "GA has a course on UXD"
			puts "GA has a course on PDM"
		end
	end
	
	my_course = GA_course.new("BEWD")
	my_course.announce_course #
	GA_Course.announce_courses 
```
	
>GA has a course on BEWD

>GA has a course on BEWD
>GA has a course on FEWD
>GA has a course on CSF
>GA has a course on DAT
>GA has a course on UXD
>GA has a course on PDM


###Still Feel Lost? 

Its ok, we will see these terms again in Rails, but you can also,

####Catch Up With These Resources

*	Working with Enumerables [Video](http://vimeo.com/gatv/review/67752032/67e8f877bb)
	*	password => BEWD_GA	
*	[Modules](http://marakana.com/bookshelf/ruby_tutorial/modules.html
)
*	[Mixins](http://samwho.co.uk/blog/2011/09/12/ruby-mixins/)












