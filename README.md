**该项目仅用于实验目的，生产等级代码未在此处发布.**

# Deep LSTM/GRU siamese network for short text similarity

It is a tensorflow based implementation of deep siamese LSTM/GRU network to capture phrase/sentence similarity using character embeddings.

This code provides architecture for learning two kinds of tasks:

- Phrase similarity using char level embeddings [1]
![siamese lstm phrase similarity](https://cloud.githubusercontent.com/assets/9861437/20479454/405a1aea-b004-11e6-8a27-7bb05cf0a002.png)

- Sentence similarity using word level embeddings [2]
![siamese lstm sentence similarity](https://cloud.githubusercontent.com/assets/9861437/20479493/6ea8ad12-b004-11e6-89e4-53d4d354d32e.png)

For both the tasks mentioned above it uses a multilayer siamese LSTM/GRU network and euclidian distance based contrastive loss to learn input pair similairty.


# How to run
### 训练
```
$ python train.py [options/defaults]

options:
  -h, --help            show this help message and exit
  --embedding_dim EMBEDDING_DIM
                        Dimensionality of character embedding (default: 100)
  --dropout_keep_prob DROPOUT_KEEP_PROB
                        Dropout keep probability (default: 0.5)
  --l2_reg_lambda L2_REG_LAMBDA
                        L2 regularizaion lambda (default: 0.0)
  --max_document_words MAX_DOCUMENT_WORDS
                        Max length (left to right max words to consider) in
                        every doc, else pad 0 (default: 100)
  --training_files TRAINING_FILES
                        Comma-separated list of training files (each file is
                        tab separated format) (default: None)
  --hidden_units HIDDEN_UNITS
                        Number of hidden units(default:50)
  --batch_size BATCH_SIZE
                        Batch Size (default: 128)
  --num_epochs NUM_EPOCHS
                        Number of training epochs (default: 200)
  --evaluate_every EVALUATE_EVERY
                        Evaluate model on dev set after this many steps
                        (default: 2000)
  --checkpoint_every CHECKPOINT_EVERY
                        Save model after this many steps (default: 2000)
  --allow_soft_placement [ALLOW_SOFT_PLACEMENT]
                        Allow device soft device placement
  --noallow_soft_placement
  --log_device_placement [LOG_DEVICE_PLACEMENT]
                        Log placement of ops on devices
  --nolog_device_placement

```
### 评估
```
$ python3 utils/eval.py --model ./runs/1548647044/checkpoints/model-15000

```

[docker images](https://hub.docker.com/r/gswyhq/siamesenet-text-similarity)
