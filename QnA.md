### How long did this assignment take?

This assignment took me 2 days.

### What was the hardest part?

The hardest part of the assignment was everything! Jokes aside, the hardest part was getting back into Rails and it has changed a lot in some ways and in others, not at all. Rails has a lot of different keywords and in-buit functionality that threw me off a lot as to what I could and could not change. The simplest errors related to keywords and syntax would take me a good hour or two to fix. This was also the first time working with Rails to this degree and I ran into a good deal of version incompatible gem problems when attempting to learn the in-s and out-s by following tutorials. Authentication was definitely the easiest part of it all. Rails just handles that right out of the box. Learning enough about how ActiveRecord, models and controllers work to get things up and running and debugging was definitely a challenge. Overall, definitely a challenging task but with lots to learn there (and I'm quite proud of how much I came up with)! I also found the documentation a bit dated with an emphasis on understanding Rails conceptually rather than through use cases.

### Did you learn anything new?

Honestly, everything in this project was new. The last time I had worked with Ruby was back in early 2017. The only thing that was not new was dealing with bundler issues.

### Is there anything you would have liked to implement but didn't have the time to?

YES!!!! I would have loved to complete the friend feature. Better error messages, redirect to log-in, if user trying to sign up already exists, and a test-suite for the controllers.

### What are the security holes (if any) in your system? If there are any, how would you fix them?

In terms of authentication, because we are using tokens, there aren't any risks of XSS since the server is completely stateless. This doesn't account for the fact that when we send back data, we pass it back as a simple JSON instead of hashing it (if its private data). Also, if my understanding is correct of JWT in cookies, the app is still vulnerable to CSRF. The best way to deal with this would be to use a middleware library.

### Do you feel that your skills were well tested?

I think my familiarity with a given framework was tested rather than my skills.
