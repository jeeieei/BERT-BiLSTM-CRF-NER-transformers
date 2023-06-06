#! /bin/bash


python ner.py    --model_name_or_path bert-base-chinese  --do_train True  --do_eval True    --do_test True    --max_seq_length 205     --train_file data/ztrain.txt     --eval_file data/ztest.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 10     --train_batch_size 32   --eval_batch_size 32   --learning_rate 1e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_args1532.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label1532.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model


python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label1532.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj1532.txt

sleep 5m

python ner.py    --model_name_or_path bert-base-chinese  --do_train True  --do_eval True    --do_test True    --max_seq_length 205     --train_file data/ztrain.txt     --eval_file data/ztest.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 10     --train_batch_size 16   --eval_batch_size 16   --learning_rate 1e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_args1516.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label1516.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model


python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label1516.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj1516.txt

sleep 5m

python ner.py    --model_name_or_path bert-base-chinese  --do_train True  --do_eval True    --do_test True    --max_seq_length 205     --train_file data/ztrain.txt     --eval_file data/ztest.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 10     --train_batch_size 8   --eval_batch_size 8   --learning_rate 1e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_args1508.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label1508.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model


python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label1508.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj1508.txt

sleep m

python ner.py    --model_name_or_path bert-base-chinese  --do_train True  --do_eval True    --do_test True    --max_seq_length 205     --train_file data/ztrain.txt     --eval_file data/ztest.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 10     --train_batch_size 4   --eval_batch_size 4   --learning_rate 1e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_args1504.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label1504.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model


python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label1504.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj1504.txt



sleep 20m

python ner.py    --model_name_or_path bert-base-chinese  --do_train True  --do_eval True    --do_test True    --max_seq_length 205     --train_file data/ztrain.txt     --eval_file data/ztest.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 10     --train_batch_size 32   --eval_batch_size 32   --learning_rate 1e-4   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_args1432.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label1432.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model


python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label1432.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj1432.txt

sleep 20m

python ner.py    --model_name_or_path bert-base-chinese  --do_train True  --do_eval True    --do_test True    --max_seq_length 205     --train_file data/ztrain.txt     --eval_file data/ztest.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 10     --train_batch_size 16   --eval_batch_size 16   --learning_rate 1e-4   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_args1416.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label1416.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model


python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label1416.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj1416.txt

sleep 20m

python ner.py    --model_name_or_path bert-base-chinese  --do_train True  --do_eval True    --do_test True    --max_seq_length 205     --train_file data/ztrain.txt     --eval_file data/ztest.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 10     --train_batch_size 8   --eval_batch_size 8   --learning_rate 1e-4   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_args1408.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label1408.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model


python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label1408.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj1408.txt

sleep 20m

python ner.py    --model_name_or_path bert-base-chinese  --do_train True  --do_eval True    --do_test True    --max_seq_length 205     --train_file data/ztrain.txt     --eval_file data/ztest.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 10     --train_batch_size 4   --eval_batch_size 4   --learning_rate 1e-4   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_args1404.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label1404.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model


python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label1404.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj1404.txt

