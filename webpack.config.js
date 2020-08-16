const path = require('path');

const postCSSPlugins = [
    require('postcss-import'),
    require('postcss-simple-vars'),
    require('postcss-nested'),
    require('autoprefixer')
]
module.exports = {
    entry: './scripts/sidenav.js',
    output: {
        filename: 'bundeld.js',
        path: path.resolve(__dirname, '')
    },
    mode: 'development',
    watch: true,
    module: {
        rules: [
            {
                test: /\.css$/i,
                use: ['style-loader','css-loader?url=false', {loader:'postcss-loader', options: {plugins: postCSSPlugins}}]
            }
        ]
    }
}