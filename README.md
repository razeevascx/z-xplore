<div align="center">

# Z XPLORE DEV CONTAINER

_Reproducible IBM Z Xplore tooling in a small Docker image._

</div>

<div align="center">

![Last Commit](https://img.shields.io/github/last-commit/razeevascx/z-xplore?label=last%20commit&color=blue&style=flat-square)
![Node.js](https://img.shields.io/badge/node.js-22.x-brightgreen?style=flat-square)
![Languages](https://img.shields.io/github/languages/count/razeevascx/z-xplore?label=languages&color=orange&style=flat-square)

**Built with the tools and technologies:**

![Docker](https://img.shields.io/badge/-Docker-black?style=flat-square&logo=docker)
![Debian](https://img.shields.io/badge/-Debian-A81D33?style=flat-square&logo=debian)
![Node.js](https://img.shields.io/badge/-Node.js-43853D?style=flat-square&logo=node.js&logoColor=white)
![Java](https://img.shields.io/badge/-Java-007396?style=flat-square&logo=java&logoColor=white)
![npm](https://img.shields.io/badge/-npm-CB3837?style=flat-square&logo=npm&logoColor=white)
![Git](https://img.shields.io/badge/-Git-F05032?style=flat-square&logo=git&logoColor=white)

</div>

## Project Overview

Z Xplore Dev Container packages the core tooling needed for IBM Z Xplore without manual setup. It targets learners who want a reproducible, Docker-based environment with Node.js, Java, and Zowe CLI. The image stays small and predictable while covering the essentials.

## Key Features

- **Node.js 22** for modern CLI tooling and scripting
- **OpenJDK (default-jdk)** for Java-based IBM Z workflows
- **Zowe CLI** for z/OS interaction from the command line
- **Git** for tracking exercises and changes
- **Debian Trixie base** for a stable runtime

## Quick Start Demo

Pull the published image and confirm the tools are available:

```bash
docker run --rm -it razeevascx/z-explore:latest bash -lc "node --version && java -version && zowe --version"
```

## Tech Stack

- **Base Image:** Debian Trixie
- **Runtime:** Node.js 22, OpenJDK (default-jdk)
- **CLI Tooling:** Zowe CLI, Git
- **Infrastructure:** Docker

## Setup

### Prerequisites

- Docker Desktop
- Git
- Optional: VS Code + Dev Containers extension

### Installation

1. **Clone the Repository**
   ```bash
   git clone https://github.com/razeevascx/z-xplore.git
   ```
2. **Navigate to Project**
   ```bash
   cd z-xplore
   ```
3. **Build the Image**
   ```bash
   docker build -t razeevascx/z-explore:latest .
   ```
4. **Run the Container**
   ```bash
   docker run --rm -it razeevascx/z-explore:latest
   ```

### Verification

- Inside the container, run:
  - `node --version`
  - `java -version`
  - `zowe --version`

## VS Code Dev Container

If you prefer using VS Code Dev Containers, this repo ships a devcontainer config:

1. Install the Dev Containers extension in VS Code.
2. Open the repository in VS Code.
3. Run **Dev Containers: Reopen in Container**.

## VS Code Extensions

These extensions are included in the dev container configuration:

- IBM.db2forzosdeveloperextension
- Zowe.vscode-extension-for-zowe
- marvinengelmann.ibm-theme
- IBM.zopeneditor
- bitlang.cobol
- broadcomMFD.cobol-language-support
- BroadcomMFD.debugger-for-mainframe
- IBM.zosconsole
- IBM.zosprogramming

## IBM Z Xplore Resources

- IBM Z Xplore: https://www.ibm.com/z/zxplore
- Zowe CLI Docs: https://docs.zowe.org/
- IBM Z Open Editor: https://ibm.github.io/zopeneditor-about/
- IBM Z Community: https://community.ibm.com/community/user/ibmz-and-linuxone/home

## Support and Community

- GitHub Issues: https://github.com/razeevascx/z-xplore/issues
- IBM Z Xplore Help: https://www.ibm.com/z/zxplore
