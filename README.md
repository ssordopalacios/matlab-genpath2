# genpath2
`genpath2` calls genpath and removes folders matching a specified pattern

## Description
MATLAB's built-in `genpath` returns a character vector containg the path of a folder and any of its subfolders. The function excludes folders starting with *+*, *private*, and *resource*, but it does not allow users to specify additional patterns for exclusion. 

This lack of functionality can cause problems when users initialize projects with the `addpath(genpath(folderName))`. For example, it becomes more difficult to parse the output of `path` when hundreds of *.git* folders are printed. It can also cause folder handle notification issues when working on network drives and MATLAB has to search through hundreds of folders for files.

This is where `genpath2` comes in. Inspired by Jesse Hopkins's [`genpath_exclude`](https://www.mathworks.com/matlabcentral/fileexchange/22209-genpath_exclude), `genpath2` is a wrapper for `genpath` (instead of its own standalone function) that removes folders from the its output that match a provided list of patterns and returns it in the same format.

## Usage
* `genpath2(userpath)` is identical to `genpath(userpath)`
* `genpath2(userpath, '.git')` removes all folders start with *.git*
* `genpath2(userpath, {'.git', '.svn'})` removes all folders starting with *.git* and *.svn* 

## Contributing
* [Santiago I. Sordo-Palacios](https://github.com/ssordopalacios)
* Feel free to submit and issue and open a pull request if you would like to add any features to the function
