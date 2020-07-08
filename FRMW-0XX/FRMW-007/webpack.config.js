
const path = require(`path`);
const MiniCssExtractPlugin = require("mini-css-extract-plugin");

module.exports = {
    entry: `./src/index.js`,
    output: {
        filename: `main.js`,
        path: path.join(__dirname, `dist`)
    },
    devServer: {
        open: true,
        port: 1337,
    },
    module: {
        rules: [
            {
                test: /\.(js|jsx)$/,
                exclude: /node_modules/,
                use: {
                    loader: `babel-loader`
                },
            },
            {
                // css
                test: /\.css$/,
                use: [
                    "style-loader",
                    MiniCssExtractPlugin.loader,
                    {
                        loader: "css-loader",
                        options: {sourceMap: true}
                    },
                ]
            }
        ],
    },
    plugins: [
        new MiniCssExtractPlugin({
            filename: "main.css",
        })
    ],
    resolve: {
        extensions: [`.js`, `json`]
    },
    devtool: `source-map`,

};