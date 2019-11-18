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
