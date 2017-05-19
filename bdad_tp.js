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

//1. Quantos tweets têm como source o twitter versão ‘web’?
db.tweets.find({'source':'web'}).count();

//2. Quantos tweets têm a hashtag 'javascript'?


//3. Quais são as hashtags mais populares? (utilize a função aggregate())


//4. Quantos tweets têm utilizadores com mais de 100 followers?


//5. Ordena 100 tweets aleatórios pelo número de amigos dos utilizadores por ordem decrescente.


//6. Quantos tweets falam do Cristiano Ronaldo?


//7. Quantos tweets têm utilizadores com timezone ‘Lisbon’ ?


//8. Encontra timezones distintas na coleção.


//9. Qual é a timezone com mais tweets? (utilize a função aggregate())


//10. Um tweet com menções a outros utilizadores .


//11. Quantos tweets têm menções a outros utilizadores?


//12. Quantos tweets têm 3 menções a outros utilizadores?


//13. Quantos tweets têm 3 menções a outros utilizadores e 2 hashtags?


//14. Existe um utilizador com mais de 7 tweets na coleção. Qual o seu screen_name? (utilize a função aggregate())


//15. Qual é o tweet com maior número de hashtags? (utilize a função aggregate())

