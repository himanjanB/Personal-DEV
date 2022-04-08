trigger ForceForecasting on User (before insert, before update) {
    for (User u : Trigger.new) {
        if (u.ForecastEnabled == false) {
            u.ForecastEnabled = true;
        }
    }
}