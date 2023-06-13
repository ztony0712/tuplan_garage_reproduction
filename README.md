# nuPlan Garage

## [Paper]() | [Supplementary]() | [Video]() | [Talk]() | [Slides]()

<br/>


https://github.com/autonomousvision/nuplan_garage/assets/22528226/d2d4d7f5-b4ed-4fcc-a430-18363e928ef0


<br/>

> [**Parting with Misconceptions about Learning-based Vehicle Motion Planning**](https://arxiv.org/abs/)
>
> [Daniel Dauner](https://danieldauner.github.io/)<sup>1,2</sup>, [Marcel Hallgarten](https://mh0797.github.io/)<sup>1,3</sup>, [Andreas Geiger](https://www.cvlibs.net/)<sup>1,2</sup>, and [Kashyap Chitta](https://kashyap7x.github.io/)<sup>1,2</sup>
> 
> <sup>1</sup> University of Tübingen, <sup>2</sup> Tübingen AI Center, <sup>3</sup> Robert Bosch GmbH
>


## News
* **`14 Jun, 2023`:** We released our paper on [Arxiv](https://arxiv.org/abs/). Code and models are coming soon, please stay tuned!
* **`2 Jun, 2023`:** Our approach won the [2023 nuPlan Challenge](https://opendrivelab.com/AD23Challenge.html#nuplan_planning)!


## Overview
> This repo is intended to serve as a starting point for vehicle motion planning research on [nuPlan](https://github.com/motional/nuplan-devkit). We will provide a publicly accesible configuration for validation, comprehensive set of baselines, and pre-trained planning models.

- The release of nuPlan marks a new era in vehicle motion planning research, offering the first large-scale real-world dataset and evaluation schemes requiring both precise short-term planning and long-horizon ego-forecasting. Existing systems struggle to simultaneously meet both requirements.

- Indeed, we find that these tasks are fundamentally misaligned and should be addressed independently.

- We further assess the current state of closed-loop planning in the field, revealing the limitations of learning-based methods in complex real-world scenarios and the value of simple rule-based priors such as centerline selection through lane graph search algorithms.

- More surprisingly, for the open-loop sub-task, we observe that the best results are achieved when using only this centerline as scene context (i.e., ignoring all information regarding the map and other agents).

- Combining these insights, we propose an extremely simple and efficient planner which outperforms an extensive set of competitors, winning the nuPlan planning challenge 2023.


## Method

> We decompose the process of determining a safe and comfortable trajectory into two sub-tasks: (1) planning the short-term motion, and (2) accurately forecasting the long-term ego trajectory. While the former primarily impacts closed-loop performance, the latter is essential for the open-loop task. Our method employs a rule-based predictive planner to generate a trajectory proposal, and a learned ego-forecasting module that refines the trajectory with a particular emphasis on long-term forecasting.

<div align="center">
<img src="./assets/framework.png" />
</div>


## Results
Planning results on the proposed *Val14* benchmark. Please refer to the [paper](https://arxiv.org/abs/) for more details.

| **Method**        | **Representation**     | **CLS-R ↑** | **CLS-NR ↑** | **OLS ↑**  | **Time (ms) ↓** |
|-------------------|--------------|------------|--------------|------------|------------|
| [Urban Driver](https://arxiv.org/abs/2109.13333)  | Polygon      | 44         | 45           | 76         | 64         |
| [GC-PGP](https://arxiv.org/abs/2302.07753v1)        | Graph        | 54         | 57           | 82         | 100        |
| [PlanCNN](https://arxiv.org/abs/2210.14222)       | Raster       | 72         | 73           | 64         | 43         |
| [IDM](https://arxiv.org/abs/cond-mat/0002177)           | Centerline   | 77         | 76           | 38         | 27         |
| PDM-Open          | Centerline   | 54         | 50           | **86**     | **7**      |
| PDM-Closed        | Centerline   | **92**     | **93**       | 44         | 91         |
| PDM-Hybrid        | Centerline   | **92**     | **93**       | 84         | 96         |
| PDM-Hybrid*       | Graph        | **92**     | **93**       | 84         | 172        |
| *Log Replay*      | *GT*         | *80*       | *94*         | *100*      | -          |


## To Do
- [ ] Additional baselines
- [ ] ML planners code & checkpoints
- [ ] Val14 benchmark & PDM-Closed release (~18.06.23)
- [ ] Supplementary material, video, slides (~18.06.23)
- [x] Initial repo & main paper


## Contact
If you have any questions or suggestions, please feel free to open an issue or contact us (kashyap.chitta@uni-tuebingen.de).


## Citation
If you find nuPlan garage useful, please consider giving us a star &#127775; and citing our paper with the following BibTeX entry.

```BibTeX
@article{Dauner2023ARXIV,
  title={Parting with Misconceptions about Learning-based Vehicle Motion Planning},
  author={Dauner, Daniel and Hallgarten, Marcel and Geiger, Andreas and Chitta, Kashyap},
  journal={arXiv},
  volume={},
  year={2023}
}
```


## Acknowledgements
nuPlan garage includes code from the following projects: [nuplan-devkit](https://github.com/motional/nuplan-devkit). Thanks to the community for these great open-source contributions!