var webpack = require("webpack");
var path = require('path');

module.exports = {
    context: __dirname,
    entry: path.join(__dirname, 'frontend', 'better_reads.jsx'),
    output: {
        path: path.join(__dirname, 'app', 'assets', 'javascripts'),
        filename: "bundle.js"
    },
    plugins:[
        new webpack.DefinePlugin({
            'process.env':{
                'NODE_ENV': JSON.stringify('production')
            }
        }),
        new webpack.optimize.UglifyJsPlugin({
            compress:{
                warnings: true
            }
        })
    ],
    module: {
        loaders: [
            {
                test: /\.jsx?$/,
                exclude: /node_modules/,
                loader: 'babel',
                query: {
                    presets: ['react', 'es2015']
                }
            }
        ]
    },
    devtool: 'source-maps',
    resolve: {
        extensions: ["", ".js", ".jsx" ]
    }
};
