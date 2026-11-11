# homebrew-tap

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

A Homebrew tap for my own builds.

```bash
brew tap q0wkp/tap
brew trust q0wkp/tap
brew install q0wkp/tap/<name>
```

The first two are needed once. `brew trust` lets Homebrew load everything in the tap: without it some versions refuse
a package that names another of the tap. A Homebrew too old to know the command says so and needs none.

`brew upgrade` keeps them up to date, except apps that update themselves. The packages, and their names for pacman and
Pacstall, are listed in [q0wkp/pkgs](https://github.com/q0wkp/pkgs), whose Sync workflow writes `Casks/` and
`Formula/` here from each project's latest release. Don't edit them by hand.

## License

Copyright 2026 Tianyu (Sky) Lu

The entire repository is licensed under the Apache License, Version 2.0 
(the "License"); you may not use any file in this repository except in 
compliance with the License. You may obtain a copy of the License at

```plaintext
http://www.apache.org/licenses/LICENSE-2.0
```

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

## Author

Tianyu (Sky) Lu
