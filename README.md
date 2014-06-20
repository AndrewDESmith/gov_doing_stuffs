# Furatto Rails start kit

It is just a boilerplate for Rails web applications. Perfect to kickstart your next project or hackathon app.

**Demo:** [http://furatto-rails-start-kit.herokuapp.com/](ttp://furatto-rails-start-kit.herokuapp.com/)

We have been in many hackathons for the past years, and one thing we have learned is setting up a project might seem like something easy and straightforward. But things start to get complicated when working with teammates as in a hackathon where every one commits, not following rules or best practices' I mean let's be fair, time is crucial you have no time on to worry for those kind of things.

The intention for this project is to get you and your team up and running in no time, with beautiful styling using the power of [Furatto](http://icalialabs.github.io/furatto/), basic registration and authentication with [Devise](https://github.com/plataformatec/devise), and we even include Facebook as an authentication option. This way you just have to worry about the core things of your awesome app, 'cause to be fair, signin in your user isn't the funny part, and everybody just got that.

We want to give this a higher level of customization, not just give you a boilerplate, we mean, more authentication providers, predefined templates and so much more...

Here is a how it looks:

![Alt](http://s30.postimg.org/794zi6hj5/Screen_Shot_2014_02_15_at_2_32_18_PM.png)

Table of Contents
-----------------
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Obtaining API Keys](#obtaining-api-keys)
- [Setup Keys](#setup-keys)
- [Contributing](#contributing)
- [License](#license)


Features
-----------------

- **Simple old school authentication** using email and password
- **OAuth 2.0 Authentication** using Facebook
- **Rails 4 fully integration**
- **Furatto 3**
- **Account edition**
- **Account deletion**
- **Forgot password feature**

Prerequisites
-----------------
 
 - [SQlite](http://www.sqlite.org/)
 - [Rails 4.0+](http://rubyonrails.org/)
 - [Bundler](http://bundler.io/)
 - [RVM](https://rvm.io/) or [Rbenv](https://github.com/sstephenson/rbenv) for ruby
 
Getting Started
-----------------

1. Clone the project to your local machine:

	```console
		$ git clone git@github.com:IcaliaLabs/furatto-rails-start-kit.git
	```

2. Change dir to the project:

	```console
		$ cd furatto-rails-start-kit
	```

3. Run the bundle command to install all dependencies:

	```console
		$ bundle install
	```
	
4. If everything wetn smooth you should be able to run the server:

	```console
		$ rails server
	```

5. Open <http://locahost:3000> and you should be good to start kicking.
 

Obtaining Api Keys
-----------------

In order to get the Facebook app keys you will need to:

1. Visit [Facebook developers](https://developers.facebook.com/) and with your facebook credentials you should be able to enter.

2. On the top bar click on **Apps** and select create one. Fill in all the necessary fields.

3. Once you create your app, on the left panel click on **Dashboard** and there should be the 2 necessary keys.


Setup Keys
-----------------

We use [Figaro](https://github.com/laserlemon/figaro) to manage all the keys used in the application, as it is easier to deploy. We provide an `application.yml.example` as a template, you can follow the instructions too:

1. To setup the `application.yml` file just run:

	```console
		$ mv config/application.yml.example config/application.yml
	```

You should be good to go, just drop the keys you just obtained from Facebook developers page and rock & roll.

Contributing
-----------------

Please submit all pull requests against a separate branch. And feel free to add other providers, or features you might find necessary for a starter app.

Thanks!


License
-----------------

The MIT License (MIT)

Copyright (c) 2014, Icalia Labs

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.