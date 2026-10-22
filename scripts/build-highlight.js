const fs = require('fs');
// Called by update-highlighting.sh with the pinned Prism source and resource directory.
const path = process.argv[2];
const destination = process.argv[3];
if (!path || !destination) throw new Error('Usage: node build-highlight.js PRISM_SOURCE RESOURCE_DIRECTORY');
const metadata = require(path + '/components.json');
const languages = Object.keys(metadata.languages).filter(id => id !== 'meta');
let runtime = '/* Prism 1.30.0, MIT License, Copyright (c) 2012 Lea Verou. See Prism-LICENSE.txt. */\n';
runtime += fs.readFileSync(path + '/components/prism-core.min.js', 'utf8') + '\n';
runtime += fs.readFileSync(path + '/dependencies.js', 'utf8') + '\n';
runtime += 'var sumiGrammarDefinitions = {};\n';
for (const id of languages) {
 runtime += 'sumiGrammarDefinitions[' + JSON.stringify(id) + '] = function () {\n';
 runtime += fs.readFileSync(path + '/components/prism-' + id + '.min.js', 'utf8') + '\n};\n';
}
const dependencies = {};
for(const [id, value] of Object.entries(metadata.languages)) {
 if(id === 'meta') continue;
 dependencies[id] = Object.fromEntries(Object.entries(value).filter(([key])=>['require','optional','modify','alias'].includes(key)));
}
runtime += 'var sumiGrammarDependencies = ' + JSON.stringify({languages:dependencies}) + ';\n';
runtime += `var sumiLoadedGrammars = [];
function sumiLoadGrammar(language) {
    getLoader(sumiGrammarDependencies, [language], sumiLoadedGrammars).load(function (id) {
        sumiGrammarDefinitions[id]();
        if (sumiLoadedGrammars.indexOf(id) < 0) sumiLoadedGrammars.push(id);
    });
}\n`;
fs.writeFileSync(destination + '/Prism.js', runtime);
console.log(languages.length + ' definitions, ' + Buffer.byteLength(runtime) + ' bytes');
