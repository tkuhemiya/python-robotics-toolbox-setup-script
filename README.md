# Setup Script for Python Robotics Toolbox

## Why installation is tricky

* The toolbox does not enforce maximum version limits for its dependencies.
* This can cause **incompatibilities** when newer versions of libraries are installed.

## How to use
- use WSL if on windows

1. Navigate to the directory where you want to use the toolbox:

   ```sh
   cd /path/to/your/project
   ```
2. Clone the toolbox repository:

   ```sh
   git clone <repository-link> ./
   ```
3. Install the toolbox and dependencies by sourcing the setup script:

   ```sh
   . ./installRobo.sh
   # or
   source ./installRobo.sh
   ```
4. Start Python with all the common imports preloaded:

   ```sh
   ./initRobo.sh
   ```

