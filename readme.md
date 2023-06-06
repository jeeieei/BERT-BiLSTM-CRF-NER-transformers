### 运行的环境
```
python == 3.8.12
pytorch == 1.10.0 
pytorch-crf == 0.7.2  
pytorch-transformers == 1.2.0  
BERT_BASE_DIR=Jihuai/bert-ancient-chinese
```
### 使用方法
```
BERT_BASE_DIR=Jihuai/bert-ancient-chinese
DATA_DIR=/raid/ypj/openSource/cluener_public/
OUTPUT_DIR=./model/clue_bilstm
export CUDA_VISIBLE_DEVICES=0 ，1

python ner.py \
    --model_name_or_path bert-base-chinese\
    --do_train True \
    --do_eval True \
    --do_test True \
    --max_seq_length 256 \
    --train_file ${DATA_DIR}/train.txt \
    --eval_file ${DATA_DIR}/test.txt \
    --test_file ${DATA_DIR}/predict.txt \
    --train_batch_size 32 \
    --eval_batch_size 32 \
    --num_train_epochs 10 \
    --do_lower_case \
    --logging_steps 200 \
    --need_birnn True \
    --rnn_dim 256 \
    --clean True \
    --output_dir /model
    
 ner.py  --model_name_or_path Jihuai/bert-ancient-chinese  --do_train True  --do_eval True    --do_test True    --max_seq_length 256     --train_file data/train.txt     --eval_file data/test.txt    --test_file data/predict.txt    --train_batch_size 2     --eval_batch_size 32     --num_train_epochs 10     --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256     --clean True   --output_dir model
~/corpus/pretrain/bert/bert-base-chinese

Submisission.py  --yclabel   --tjsj 

# ## 数据处理，删除一个模型不能识别的字符，繁体字
data :包含划分完成的训练集，验证集，测试集，额外拓展集 ，和训练的不同数据
dc: 包含模型运行生成的 最优参数，和预测标签
tj:目标格式转换完成之后的文件 ，即提交的数据 
上述文件包含有效训练的结果，单独存在文件中
```



### 结果复现--运行示例 ：
####注意路径
## 校对路径运行完成 ，运行下面即可复现实验结果（二选其一）
```
1.pycharm 终端或更改 ner.py  Submisission.py 配置

#### 参照文件中 操作图片的配置示例

python ner.py    --model_name_or_path /home/user/corpus/pretrain/bert-ancient-chinese/  --do_train True  --do_eval True    --do_test True    --max_seq_length 256     --train_file data/train.txt     --eval_file data/test.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 30     --train_batch_size 02   --eval_batch_size 02   --learning_rate 5e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-transformers-main/dc/training_args550230.bin   --label_lu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-transformers-main/dc/label550230.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-transformers-main/model

python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-transformers-main/dc/label550230.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-transformers-main/tj/tj5502300.txt


training_args550230.bin：最优模型保存--二进制
/dc/label550230.txt ： 预测结果标签
/tj/tj5502300.txt: 提交目标格式文件

2.更改 文件中 jg.txt 里面相应路径，后缀名改为 .sh
终端运行 bash jg.sh   自动执行完 ，运行 Submisission.py  
运行完实验结果在：tj文件下面

```


####过程示例
```
accuracy:  91.71%; precision:  83.12%; recall:  85.54%; FB1:  84.31
             BOOK: precision:   4.17%; recall:   3.45%; FB1:   3.77  24
              OFI: precision:  70.27%; recall:  81.43%; FB1:  75.44  518
              PER: precision:  88.77%; recall:  88.30%; FB1:  88.54  1514

```
