var input = require('fs').readFileSync('stdin', 'utf8');
var lines = input.split('\n');
function media (){
    let A = parseFloat(line.shift());
    let B = parseFloat(line.shift());

    return ((A * 3.5) / 11) + ((B * 7.5) /11);
}
console.log(`MEDIA = ${MEDI().tofixed(5)}`);