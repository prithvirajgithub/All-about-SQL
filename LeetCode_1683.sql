select 
    tweet_id 
from 
    Tweets 
where 
    char_length(tweet_id) <= 15
