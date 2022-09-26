# TUGDA: Task uncertainty guided domain adaptation for robust generalization of cancer drug response prediction from in *in vitro* to *in vivo* settings

TUGDA is a novel multi-task unsupervised domain adaptation method that leverages transfer learning from tasks/domains in a unified framework by quantifying uncertainty in predictors and weighting their influence on shared domain/task feature representations. TUGDA's ability to rely more on predictors with low-uncertainty allowed it to notably reduce cases of negative transfer and sucessfully transfer knowledge across biological models.

**Model Representation:**
![Image of Yaktocat](https://github.com/CSB5/TUGDA/blob/main/fig1_model.png)


TUGDA framework for multi-task learning and domain adaptation in cancer drug response prediction. The layer L receives input data from different biological models and maps them to a latent space Z. Then, the multi-task layer S uses these latent features to make predictions, as well as compute task-uncertainties U t for regularizing the amount of transfer from tasks/domains in A to the latent features in Z by employing an autoencoder regularization. Using adversarial learning, the discriminator D receives the extracted features from Z and regularizes L to learn domain-invariant features. L, S, A and D consist of a single fully connected layer.

# Usage examples

We provide two notebooks as examples of how the training and testing is perfomed using TUGDA's framework. Both notebooks are self-contained (e.g., install required libs and load the necessary data). 

Step zero: bash setup_repo.sh

1) For MTL settings, please refer to [notebooks](https://github.com/CSB5/TUGDA/blob/main/tugda_mtl_example.ipynb). In this notebook you can reproduce TUGDA's result for Figure 2.

2) For Domain Adaptation settings, please refer to [notebooks](https://github.com/CSB5/TUGDA/blob/main/tugda_da_example.ipynb). In this notebook, you can reproduce TUGDA's result for the domain adaptation from cell-lines to PDX (Figure 3).

# Data
In this repository we used data from the publicly available [GDSC](https://www.cancerrxgene.org/) and [PDX Novartis](https://www.nature.com/articles/nm.3954) datasets.

# Citation

Peres da Silva, R., Suphavilai, C. & Nagarajan, N. TUGDA: task uncertainty guided domain adaptation for robust generalization of cancer drug response prediction from in vitro to in vivo settings. Bioinformatics 37, i76–i83 (2021). [OUP Bioinformatics](https://academic.oup.com/bioinformatics/article/37/Supplement_1/i76/6277145)

# Contact information

For additional information, help and bug reports please email Rafael Peres da Silva ([rafael@comp.nus.edu.sg](mailto:rafael@comp.nus.edu.sg))
