const path = require('path');

module.exports = {
    entry: './scripts/sidenav.js',
    output: {
        filename: 'bundeld.js',
        path: path.resolve(__dirname, '')
    },
    mode: 'development',
    watch: false
}