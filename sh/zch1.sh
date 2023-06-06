#! /bin/bash

python ner.py    --model_name_or_path bert-base-chinese  --do_train True  --do_eval True    --do_test True    --max_seq_length 205     --train_file data/ztrain.txt     --eval_file data/ztest.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 10     --train_batch_size 32   --eval_batch_size 32   --learning_rate 3e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_args3532.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label3532.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model


python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label3532.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj3532.txt

sleep 10m

python ner.py    --model_name_or_path bert-base-chinese  --do_train True  --do_eval True    --do_test True    --max_seq_length 205     --train_file data/ztrain.txt     --eval_file data/ztest.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 10     --train_batch_size 16   --eval_batch_size 16   --learning_rate 3e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_args3516.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label3516.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model


python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label3516.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj3516.txt

sleep 10m

python ner.py    --model_name_or_path bert-base-chinese  --do_train True  --do_eval True    --do_test True    --max_seq_length 205     --train_file data/ztrain.txt     --eval_file data/ztest.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 10     --train_batch_size 8   --eval_batch_size 8   --learning_rate 3e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_args3508.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label3508.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model


python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label3508.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj3508.txt

sleep 15m

python ner.py    --model_name_or_path bert-base-chinese  --do_train True  --do_eval True    --do_test True    --max_seq_length 205     --train_file data/ztrain.txt     --eval_file data/ztest.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 10     --train_batch_size 4   --eval_batch_size 4   --learning_rate 3e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_args3504.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label3504.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model


python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label3504.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj3504.txt



sleep 10m

python ner.py    --model_name_or_path bert-base-chinese  --do_train True  --do_eval True    --do_test True    --max_seq_length 205     --train_file data/ztrain.txt     --eval_file data/ztest.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 10     --train_batch_size 32   --eval_batch_size 32   --learning_rate 3e-4   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_args3432.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label3432.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model


python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label3432.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj3432.txt

sleep 15m

python ner.py    --model_name_or_path bert-base-chinese  --do_train True  --do_eval True    --do_test True    --max_seq_length 205     --train_file data/ztrain.txt     --eval_file data/ztest.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 10     --train_batch_size 16   --eval_batch_size 16   --learning_rate 3e-4   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_args3416.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label3416.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model


python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label3416.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj3416.txt

sleep 10m

python ner.py    --model_name_or_path bert-base-chinese  --do_train True  --do_eval True    --do_test True    --max_seq_length 205     --train_file data/ztrain.txt     --eval_file data/ztest.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 10     --train_batch_size 8   --eval_batch_size 8   --learning_rate 3e-4   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_args3408.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label3408.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model


python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label3408.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj3408.txt

sleep 15m

python ner.py    --model_name_or_path bert-base-chinese  --do_train True  --do_eval True    --do_test True    --max_seq_length 205     --train_file data/ztrain.txt     --eval_file data/ztest.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 10     --train_batch_size 4   --eval_batch_size 4   --learning_rate 3e-4   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_args3404.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label3404.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model


python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label3404.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj3404.txt

