Feature:
  Scenario:
    # Expected: foo in shared scope
    # Actual: foo not in shared scope

    # Spec: https://github.com/intuit/karate#call-vs-read
    # if (cond) karate.call(true, 'login.feature')
    # if you need conditional logic
    # and Shared Scope, add a boolean true first argument
    * if ( karate.get('foo') == null ) karate.call(true, 'classpath:examples/set-foo.feature')
    * match foo == 'Foo'
