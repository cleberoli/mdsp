# The minimum distance superset problem
This repository contains the code used to recriate the experiments described on the paper [The minimum distance superset problem: formulations and algorithms](https://link.springer.com/article/10.1007/s10898-017-0579-9).

## Models
Inside the model module we have the five models described in the paper:
* Quadratic formulation (QP)
* Reformulation-linearization technique (RLT)
* Integer formulation (IP)
* Feasible solution search (FEAS)
* Maximization search (MAX)

## Instances
In the generator module we have the code responsible for generating the instances tested. According to the paper we divide these instances in four categories:
* Full instances (full)
* Missing distance instances (miss)
* Joint instances (joint)
* Random instances (drand)

## Logs
In the logs folder, for each pair of instance type and model there is a folder containing the logs of each instance. For each instance there are four related files (.log, .lp, .sol, .time).
* The .log file has the information exported by the solver (gurobi) during the process
* The .lp file has the (latest) model of the problem for that instance
* The .sol file has the best solution found for the the model
* The .time file contains all the elapsed times for each optimzation, along with their status
