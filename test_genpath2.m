classdef test_genpath2 < matlab.unittest.TestCase
    %TEST_GENPATH2 is the test suite for the genpath2 function
    %
    % USAGE: runtests('test_genpath2')
    %
    % PROPERTIES
    %
    %
    % METHODS
    %
    % Santiago I. Sordo-Palacios, 2019
    
    properties
        main
        
        folderA = 'A'
        folderAsub = ['A' filesep 'Sub']
        folderB = 'B'
        folderC = 'C'
        expected
        
    end % properties
    
    methods (TestClassSetup)
        function createFolders(testCase)
            % Generate folder names for testing
            testCase.main = 'tempname'; %TODO: replace with tempname()
            badEnv = 
            assert()
            
            % Make the directories and add teardown methods
            fields = fieldnames(testCase);
            nFields = length(fields);
            for iField = 1:nFields
                thisField = fields{iField};
                mkdir(testCase.(thisField));
                % TODO: addTearDown
            end % for-Field
            
            % Generate a path to compare with
            testCase.expected = genpath(testCase.main);
            
        end % function-createFolders
    end % methods-TestClassSetup
    
    
    methods (Test)
        function noInput(testCase)
            % genpath2 = genpath with only one input
            actual = genpath2(testCase.main);
            testCase.verifyEqual(actual, testCase.expected);            
        end % function-test
        
        function blankInput(testCase)
            % genpath2 = genpath with blank second input
            actual = genpath2(testCase.main, '');
            testCase.verifyEqual(actual, testCase.expected);
            
            actual = genpath2(testCase.main, {});
            testCase.verifyEqual(actual, testCase.expected);
        end % function-blankInput
        
        function ignoreOne(testCase)
            % Ignore the folderA
            
            actual = genpath2(testCase.main, testCase.folderA)



        end % function-ignoreOnePattern


        function ignoreBoth


        end % function-ignoreBoth
            
        
    end % methods-Test
    
    
    
    
    
    
    
    
    
end % classdef-test_genpath2