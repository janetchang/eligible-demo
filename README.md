## Eligible Demo

Demo application for the [Eligible API](https://eligibleapi.com/rest-api-v1). 

Eligible powers healthcare applications to get instant answers about what services are covered for their patients.

This is what a simple application built for a provider might look like, with an emphasis on being able to quickly check what services (including chiropractic, massage therapy, physican office visit, emergency room, etc) are covered for a patient using the Eligible API. 

### Installation

1. Clone this repository 
2. `cd eligible-demo`
2. `bundle install`
3. `rails s`
4. Navigate to [http://localhost:3000](http://localhost:3000)

### Dependencies

This particular project uses [MongoDB](http://www.mongodb.org/) and the [mongoid](http://mongoid.org/en/mongoid/index.html) gem, so you'll need to have those running. Feel free to fork for the data store of your choice.

### Usage

From the dashboard, enter your API key from Eligible and NPI information. You can then add patients and perform eligibility checks.

### Demo

There is also a read-only live demo [available here](http://eligible-demo.herokuapp.com/).
