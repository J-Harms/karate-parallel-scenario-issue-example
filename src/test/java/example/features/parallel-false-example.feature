Feature: parallel-false-example

    '@parallel=false' is executing for the scenario after the one it is applied to.
    In this example it is applied to 'Scenario: Three' but 'Scenario: Four' is the one that runs non-parallel.

    Background:
        * def sleep = function(){ java.lang.Thread.sleep(2500) }
        * def logStart = function(){ karate.log(`Running ${karate.info.scenarioName}...`) }
        * def logEnd = function(){ karate.log(`Finishing ${karate.info.scenarioName}...`) }

    Scenario: One
        * logStart()
        * sleep()
        * logEnd()

    Scenario: Two
        * logStart()
        * sleep()
        * logEnd()

    @parallel=false
    Scenario: Three
        * logStart()
        * sleep()
        * logEnd()

    Scenario: Four
        * logStart()
        * sleep()
        * logEnd()

    Scenario: Five
        * logStart()
        * sleep()
        * logEnd()