//-----------------TUTORIAL-------------------------

//db.getCollectionNames();
db.tweets.find();
//db.tweets.find().count();
//db.tweets.findOne();
//db.tweets.findOne({'source':'web'});
//db.tweets.findOne({'source':'web'}, {'source':1});
//db.tweets.findOne({'user.name':'John'});
//db.tweets.findOne({'entities.hashtags':{'$ne':[]}});
//db.tweets.find({'entities.hashtags':{'$ne':[]}}).count();
//db.tweets.findOne({'entities.hashtags.text':'swagg'});
//db.tweets.findOne({'text':{'$regex':'futebol'}});
//db.tweets.find().limit(100).sort({'user.followers_count':-1});
//db.tweets.distinct('user.name');


//-----------------EXERCISES-------------------------

//1. Quantos tweets t�m como source o twitter vers�o �web�?
db.tweets.find({'source':'web'}).count();

//2. Quantos tweets t�m a hashtag 'javascript'?


//3. Quais s�o as hashtags mais populares? (utilize a fun��o aggregate())


//4. Quantos tweets t�m utilizadores com mais de 100 followers?


//5. Ordena 100 tweets aleat�rios pelo n�mero de amigos dos utilizadores por ordem decrescente.


//6. Quantos tweets falam do Cristiano Ronaldo?


//7. Quantos tweets t�m utilizadores com timezone �Lisbon� ?


//8. Encontra timezones distintas na cole��o.


//9. Qual � a timezone com mais tweets? (utilize a fun��o aggregate())


//10. Um tweet com men��es a outros utilizadores .


//11. Quantos tweets t�m men��es a outros utilizadores?


//12. Quantos tweets t�m 3 men��es a outros utilizadores?


//13. Quantos tweets t�m 3 men��es a outros utilizadores e 2 hashtags?


//14. Existe um utilizador com mais de 7 tweets na cole��o. Qual o seu screen_name? (utilize a fun��o aggregate())


//15. Qual � o tweet com maior n�mero de hashtags? (utilize a fun��o aggregate())

