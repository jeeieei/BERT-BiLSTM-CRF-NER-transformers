python ner.py    --model_name_or_path /home/user/corpus/pretrain/bert-ancient-chinese/  --do_train True  --do_eval True    --do_test True    --max_seq_length 256     --train_file data/train.txt     --eval_file data/test.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 30     --train_batch_size 02   --eval_batch_size 02   --learning_rate 5e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-transformers-main/dc/training_args550230.bin   --label_lu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-transformers-main/dc/label550230.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-transformers-main/model


python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-transformers-main/dc/label550230.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-transformers-main/tj/tj5502300.txt
