# genpath2
`genpath2` executes `genpath` and removes folders matching a specified pattern

## Description
MATLAB's `genpath(folderName)` creates a character array containg the path to `folderName` and all of its subfolders. `genpath` excludes folders starting with @, +, private, and resource, but it does not allow users to specify other patterns to exclude from its output.

Users will then `addpath` using the output of `genpath` for more folders than actually intended. It then becomes more difficult to parse the output of `path`, and it can exacerbate folder handle notifications as MATLAB searches through unusued folders for files.

Inspired by Jesse Hopkins's [`genpath_exclude`](https://www.mathworks.com/matlabcentral/fileexchange/22209-genpath_exclude), `genpath2` is a wrapper for `genpath` that executes it removes folders from its output matching a specified pattern.

## Usage
* `genpath2(folderName)` returns an array identical to `genpath(folderName)`
* `genpath2(folderName, '.git')` returns a array without folders starting with *.git*
* `genpath2(folderName, {'.git', '.svn'})` returns a vector without folders starting with *.git* or *.svn*

## Contributing
* [Santiago I. Sordo-Palacios](https://github.com/ssordopalacios)
* [File Exchange](https://www.mathworks.com/matlabcentral/fileexchange/72791-genpath2)
* [GitHub](https://github.com/ssordopalacios/matlab-genpath2)
