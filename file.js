const f = './f';

require('fs').readdirSync(f).forEach(file => {
    Append("temp.txt", Read(f + "/" + file) + "\n\n\n---\n\n\n");
});

function Read(file) {
    return require('fs').readFileSync(file).toString();
}

function Write(file, text){
    require('fs').writeFileSync(file, text);
}

function Append(file, text){
    require('fs').appendFileSync(file, text);
}
