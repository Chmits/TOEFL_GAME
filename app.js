var app = require('express')(),
    server = require('http').createServer(app),
    io = require('socket.io').listen(server),
    ent = require('ent'), // Permet de bloquer les caractères HTML (sécurité équivalente à htmlentities en PHP)
    fs = require('fs');

/************************************************************************************************************************************************/
//paramétres de la base de données
 var mysql = require('mysql');
 var connection = mysql.createConnection({
	host : 'localhost',
	user : 'root',
	password : null,
	database : 'questions',
	multipleStatements: true
});
/************************************************************************************************************************************************/
connection.connect();
//tableau qui va contenir les objets json // les 10 questions seront sauvegardé ici
var questions=[];


//la fonction qui récupére 10 questions et leurs réponses de la base de données
 function getquestions(){
 	connection.query('SELECT * from tablequestion ORDER BY RAND() LIMIT 10 ', function(err, results){
					 var string = JSON.stringify(results);
					 //console.log(string);
					 var json =  JSON.parse(string);
					 //console.log(json);
					 questions=json;
					 console.log(questions);
					 io.sockets.emit('question',questions);

				});
}
getquestions();
 function insert(data){
 	var query="Insert into tablequestion (question,rep1,rep2,rep3,rep4) VALUES ('"+data.question+"','"+data.rep1+"','"+data.rep2+"','"+data.rep3+"','"+data.rep4+"')";
 	console.log(query);
 	connection.query(query, function(err, results){
				console.log("done!");
				});
}

/************************************************************************************************************************************************/
//tableau score va contenir la liste des joueurs sous forme d'un objet json {index:0,score:0,name:obj.name,lastname:obj.lastname}
var score = []; 
//variable qui contient le nombre de joueur qui ont utilisé le jeu dés le début
var nbJoueur=0;
//tableau qui va contenir la liste des notifications
var notifications=[];
//tableau qui va contenir la liste des messages
var chat=[];

/************************************************************************************************************************************************/
// Chargement de la page index.html
app.get('/', function (req, res) {
  res.sendfile(__dirname + '/index.html');
});
app.get('/insert', function (req, res) {
  res.sendfile(__dirname + '/insert.html');
});
/************************************************************************************************************************************************/

io.sockets.on('connection', function (socket, obj) {
    // Dès qu'joueur se connecte on lui fournit tous les infos nécessaires
	socket.on('nouveau_client', function(obj){
	socket.name = ent.encode(obj.name);
	socket.lastname = ent.encode(obj.lastname);
	console.log(obj.name);
	console.log(obj.lastname);
		//on ajoute le nouveau client dans le tableau score
	score.push({index:nbJoueur,score:0,name:obj.name,lastname:obj.lastname});
	socket.emit('myIndex', nbJoueur);
	nbJoueur++;
	socket.broadcast.emit('nouveau_client',{name:socket.name,lastname:socket.lastname});
	chat.push({pseudo:"rejoint",message:"@"+socket.name+" a rejoint le chat"});
	chat.reverse();
	socket.broadcast.emit('message',chat);
	socket.emit('message',chat);
	chat.reverse();
	socket.emit('question', questions);
	//console.log(questions);
	//console.log(score);
	socket.emit('tableau',score);
	socket.broadcast.emit('tableau',score);
	socket.emit('notif',notifications);
	console.log("connection with success!");
	});
	socket.on('disconnect', function(){
	socket.broadcast.emit('message', {pseudo: socket.name, message:  "disconnect !"});
	});

	socket.on('choice', function (reponse) {
		console.log(questions[reponse.index].rep4);
		console.log(reponse.reponse);
		if(reponse.reponse == questions[reponse.index].rep4)
			{
				console.log("bravo");
				notif ="@"+socket.name+": Bravo! :D";
				for(var i=0;i<score.length;i++)
				{
					if(score[i].index==reponse.myIndex)
					{
						score[i].score+=50;
						break;
					}
				}
				score.sort(function compare(a, b) {return a.score<b.score});
				socket.emit('tableau',score);
				socket.broadcast.emit('tableau',score);
			}
		else
			notif ="@"+socket.name+": sorry wrong answer :(";

		notifications.push(notif);
		//console.log(notifications);
		notifications.reverse();
		//console.log("after reverse\n");
		//console.log(notifications);
		socket.emit('notif',notifications);
		socket.broadcast.emit('notif',notifications);
		notifications.reverse();
    }); 
	/******************************************************************/
    socket.on('choice', function (rep) {
        reponse = rep;
        console.log(reponse);
    }); 
	/******************************************************************/
    socket.on('message', function (message) {
        msg = ent.encode(message);
        console.log(message);
        console.log(socket.name);
        chat.push({pseudo:socket.name,message:message})
        chat.reverse();
        socket.broadcast.emit('message',chat);
        socket.emit('message',chat);
        chat.reverse();
    }); 
    socket.on('insert', function (data) {
        console.log(data);
        insert(data);
    }); 
});

/******************************************************************/
	var interval = setInterval(function(str1, str2) {
		console.log(str1 + " " + str2);
		for(var i=0;i<score.length;i++)
			{
				score[i].score=0;	
			}
		score.sort(function compare(a, b) {return a.score<b.score});
		io.sockets.emit('tableau',score);
		getquestions();		  
		io.sockets.emit('nvSession');      			
		}, 2000 * 60 , "Hello.", "How are you?");

 /******************************************************************/

server.listen(8087);