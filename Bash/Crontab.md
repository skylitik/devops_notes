using:
crontab [[-e]]
# MM HH DOM
#30 20 * * 1-5
# * * * * * /opt/scripts/11_monit.sh &>> /var/log/monit_httpd.log


Checking: [[tail]] [[-f]] /var/log/monit_httpd.log
# Cron jobs are scheduled tasks

A cron schedule is defined by setting values in five slots `* * * * *`. Each slot takes can take a single number, range of numbers, or `*` wildcard. Each slot is defined as:

1. **Minute** (0-59) Minute of the hour
2. **Hour** (0-23) Hour of the day
3. **Day** (1-31) Day of the month
4. **Month** (1-12) Month of the year
5. **Weekday** (0-6) Day of the week where, Sunday == 0, Monday == 1, …, Saturday == 6.
6. The script to execute (not necessary for Cloud Functions)

## Example Schedules

The snippets below show you to configure crontab for the most common use-cases.

### Every Minute

Remember, a cronjob can only be scheduled to a minimum interval of 1 minute. If we leave every value as a wildcard it will execute after every minute.

```text
* * * * *
```

### Every 15 Minutes

You can use a slash for step values, meaning it will execute every N steps.

```text
*/15 * * * *
```

### Every Day at 5:30 AM

We can schedule a daily task by defining the minute and hour values.

```text
30 5 * * *
```

To make this 5:30 PM just add 12 to the hours.

```text
30 17 * * *
```

### Twice per Day at 10AM & 10PM

We can separate values by commas to have them execute at multiple values

```text
0 10,22 * * *
```

### Every Monday & Wednesday at 8PM

We can run jobs on specific days of the week using the last slot.

```text
0 20 * * 1,3
```

### Every 5 Minutes, between 9AM and 5PM, from Monday through Friday

Maybe we have a task that should only run during normal business hours. This can be accomplished using ranges that for the hour and weekday values separated by a dash.

In other words: “At every 5th minute past every hour from 9 through 17 on every day-of-week from Monday through Friday”

```text
*/5 9-17 * * 1-5
```