function start(a, cb){
	const {exec} = require('child_process');
	exec(a, (error, stdout, stderr) => {
		cb(stdout);
	});
}

start("ls", (a) => {
	console.log(a);
});
