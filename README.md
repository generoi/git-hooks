# git-hooks

Some useful git hooks.

## Installation

    git config core.hooksPath "vendor/generoi/git-hooks/hooks"

## Features

- `pre-commit`: Ensure all tests pass
  - if `composer.json` is available: `composer test`
  - if `package.json` is available: `npm test`
- `post-merge`: Update all third party dependencies
  - if `composer.json` is available: `composer install`
  - if `yarn.lock` is available: `yarn`
  - if `package.json` is available: `npm install`
  - if `bower.json` is available: `bower install`
