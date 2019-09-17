# genpath2 v1.0.0
`genpath2` executes `genpath` and removes folders matching a given pattern

## Description
MATLAB's `genpath(folderName)` creates a character vector containg the path to `folderName` and any of its subfolders. `genpath` excludes folders starting with *@*, *+*, *private*, and *resource*, but it does not allow users to specify other patterns to exclude from its output.

This can cause problems when users `addpath` using the output of `genpath`. For one, it becomes more difficult to parse the output of `path` because many potentially unused folders are now on the file path. And similarly, it can lead to frequent folder handle notifications from MATLAB as it searches through unusued folders for files--especially when using busy network drives.

This is where `genpath2` comes in. Inspired by Jesse Hopkins's [`genpath_exclude`](https://www.mathworks.com/matlabcentral/fileexchange/22209-genpath_exclude), `genpath2` is a wrapper for `genpath` (instead of a standalone function) that executes `genpath` and then removes folders from its output matching a specified pattern.

## Usage
* `genpath2(folderName)` returns a vector identical to `genpath(folderName)`
* `genpath2(folderName, '.git')` returns a vector without folders starting with *.git*
* `genpath2(folderName, {'.git', '.svn'})` returns a vector without folders starting with *.git* or *.svn*

## Contributing
* Original Author: [Santiago I. Sordo-Palacios](https://github.com/ssordopalacios)
* [MATLAB File Exchange](https://www.mathworks.com/matlabcentral/fileexchange/72791-genpath2)
* [GitHub Project](https://github.com/ssordopalacios/matlab-genpath2)
* If you find a bug or would like to add a feature, please open and issue and submit a pull request via the GitHub Project. I do not monitor comments on the MATLAB File Exchange.
