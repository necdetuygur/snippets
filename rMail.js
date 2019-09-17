// const Mail = require('./rMail.js');

var nodemailer = require("nodemailer");
var fs = require('fs');
var path = require('path');

var transporter = nodemailer.createTransport('smtps://xxxxxx%40gmail.com:xxxxxx@smtp.gmail.com');
var mailOptions = {
	from: 'Network Mailer <xxxxxx@gmail.com>',
	to: 'xxxxxx@gmail.com',
	subject: 'Mail',
	text: ''
};

exports.SendEMail = async function Send(message) {
	try {
		mailOptions.text = message;
		transporter.sendMail(mailOptions, function(err, info) {
			if (err) {
				console.log(err);
			} else {
				// console.log("Mail Sent: " + info.response);
			}
		});
	} catch (error) {}
}
