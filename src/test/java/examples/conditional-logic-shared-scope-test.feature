Feature:
  Scenario:
    * if ( karate.get('foo') == null ) karate.call(true, 'classpath:examples/set-foo.feature')
    * match foo == 'Foo'
