const path = require('path');
const fs = require('fs');

const modulesDir = path.resolve(__dirname, '../modules');
const modules = [];
for (const module of fs.readdirSync(modulesDir)) {
  if (fs.existsSync(path.join(modulesDir, module, 'version.txt'))) {
    modules.push(module);
  }
}

console.log('%j', { modules: modules.join('\n') });
