#!/usr/bin/env bash

# scss-lint
brew install ruby
echo 'export PATH="/usr/local/opt/ruby/bin:$PATH"' >> ~/.bash_profile
source ~/.bash_profile
gem install specific_install
gem specific_install https://github.com/brigade/scss-lint.git
gem specific_install https://github.com/Sweetchuck/scss_lint_reporter_checkstyle.git


npm install -g \
    babel-eslint \
    prettier \
    # js-beautify \
    import-js \
    eslint \
    eslint-cli \
    eslint-plugin-react \
    # flow-bin \
    typescript \
    tslint \
    typescript-language-server \
    vscode-html-languageserver-bin \
    vscode-css-languageserver-bin \
    vue-language-server

