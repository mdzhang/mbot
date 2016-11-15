# Contributing

## Table of Contents

* [Requirements](#requirements)
* [Installation](#installation)
* [Running](#running)
* [Scripting](#scripting)

## Requirements

1. [Homebrew](http://brew.sh) for managing software packages on OS X
    ```
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    ```

2. [git](https://git-scm.com) for version control
    ```
    brew install git
    ```

3. [Homebrew Bundle](https://github.com/Homebrew/homebrew-bundle) for bundling packages with Homebrew
    ```
    brew tap Homebrew/bundle
    ```

## Installation

1. Clone this repo
    ```
    git clone git@github.com:mdzhang/mbot.git
    cd mbot
    ```

2. Install Homebrew packages
    ```
    brew bundle
    ```

3. Configure your shell to enable shims and automatic environment variable loading
    ```
    # ~/.bashrc

    if which nodenv > /dev/null; then
      eval "$(nodenv init -)";
    fi
    ```

4. Restart shell so that changes take effect
    ```
    source ~/.bashrc
    ```

5. Install Node
    ```
    nodenv install -s $(cat ./.node-version)
    ```

## Running

You can start mbot locally by running:

    % bin/hubot

You'll see some start up output and a prompt:

    [Sat Feb 28 2015 12:38:27 GMT+0000 (GMT)] INFO Using default redis on localhost:6379
    mbot>

Then you can interact with mbot by typing `mbot help`.

    mbot> mbot help
    mbot help - Displays all of the help commands that mbot knows about.
    ...

## Scripting

#### Custom scripts

Add custom scripts in [./scripts](scripts). See [example](scripts/example.coffee) and [official docs][scripting-docs].

[scripting-docs]: https://github.com/github/hubot/blob/master/docs/scripting.md

#### Third-Party scripts

To find packages, look on [npmjs.com][npmjs] or use `npm search`:

    % npm search hubot-scripts panda
    NAME             DESCRIPTION                        AUTHOR DATE       VERSION KEYWORDS
    hubot-pandapanda a hubot script for panda responses =missu 2014-11-30 0.9.2   hubot hubot-scripts panda
    ...

To add packages:

1. Use `npm install --save` to add the package to `package.json` and install it
2. Add the package name to `external-scripts.json` as a double quoted string

#### hubot-scripts

Before hubot plugin packages were adopted, most plugins were held in the
[hubot-scripts][hubot-scripts] package. Some of these plugins have yet to be
migrated to their own packages. They can still be used but the setup is a bit
different.

To enable scripts from the hubot-scripts package, add the script name with
extension as a double quoted string to the `hubot-scripts.json` file in this
repo.

[hubot-scripts]: https://github.com/github/hubot-scripts
