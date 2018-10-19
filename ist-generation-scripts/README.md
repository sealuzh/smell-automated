# Test Generation Replication

With the following steps you will be able to generate the test suites with the 3 different tool, as we did for the analysis we report in the paper.

## Download the jar of the tools

We use respectively EvoSuite 1.0.6, JTExpert-1.4 and Randoop-4.0.3.
You can download them with the following commands:

```
wget https://github.com/EvoSuite/evosuite/releases/download/v1.0.6/evosuite-1.0.6.jar
wget https://github.com/randoop/randoop/releases/download/v4.0.3/randoop-4.0.3.jar
wget https://sites.google.com/site/saktiabdel/JTExpert/JTExpert-1.4.jar?attredirects=0&d=1
```

## Download of the SF110 project

We rely on projects part of the SF110 benchmark.
Download it in a folder named `project` with the following command

```
wget http://www.evosuite.org/files/SF110-20130704.zip
```

## Generation

Use the `generate.sh` file to start the generation process.
The script takes the following 3 parameters:

* seed1: the starting seed
* seed2: the ending seed
* core: the number of parallel runs

A `run.sh` file will be produced in output. 
Just run it with:
```
chmod 777 run.sh
./run.sh
```
