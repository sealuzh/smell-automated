# Scented Since the Beginning: On the Diffuseness of Test Smells in Automatically Generated Test Code

This GitHub repository serves as a replication package and it contains all the data and the scripts we use in the paper.

## Context of the Study
[This](https://github.com/sealuzh/smells-automated/blob/master/subjects.csv) file contains the list of the 100 classes used in the project.

## Data Folder

The [data](https://github.com/sealuzh/smells-automated/tree/master/data) folder contains all the raw data we employ in the paper.
In particular:

* [a priori](https://github.com/sealuzh/smells-automated/tree/master/data/a-priori) contains the data and the script we use to answer RQ2;
* [ck-metrics](https://github.com/sealuzh/smells-automated/tree/master/data/ck-metrics) contains all the CK metrics we extracted from the context of the study;
* [plots](https://github.com/sealuzh/smells-automated/tree/master/data/plots) contains the figures reported into the paper;
* [test-smells-data](https://github.com/sealuzh/smells-automated/tree/master/data/test-smells-data) contains the raw data about the smells computed over the generated tests, both at class and method granularity.

## Test Generation
Moreover, we also share the [script](https://github.com/sealuzh/smells-automated/tree/master/generation-scripts) we use to automatically generate the test cases with the 3 tools we employ.
    