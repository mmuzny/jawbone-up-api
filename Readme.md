Ruby wrapper for the [unofficial Jawbone UP API](http://eric-blue.com/projects/up-api/), updated using [new unofficial documentation](https://niklaslindblad.se/2013/07/jawbone-up-api-updates/).

Work in progress. 

Find out your token:

    s = Jawbone::Session.new "you@youremail.com", "yourpassword"
    s.token # puts your Jawbone UP token

If you already have the token, you can create a session like so:

    s = Jawbone::Session.new_from_token "your_token"

Your feed in JSON format:		

    s = Jawbone::Session.new "you@youremail.com", "yourpassword"
    s.feed

Average time it takes you to fall asleep: 

    s.average_time_to_sleep
    => 650.7692307692307

Daily Summary:

    summary = Jawbone::DailySummary.new(s.daily_summary "2013-07-11")

    $> summary.steps
    => 13007

    $> summary.sleep_quality
    => 83

    $> summary.kilometers
    => 16.314

    $> summary.calories
    => 1903.30