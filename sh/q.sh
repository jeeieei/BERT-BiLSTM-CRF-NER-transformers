python ner.py    --model_name_or_path /home/user/corpus/pretrain/bert-ancient-chinese/  --do_train True  --do_eval True    --do_test True    --max_seq_length 256     --train_file data/trainx.txt     --eval_file data/testx.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 20     --train_batch_size 16  --eval_batch_size 16   --learning_rate 5e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_argsx5516.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/labelx5516.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model

python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/labelx5516.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tjx5516.txt

sleep 5m 
python ner.py    --model_name_or_path /home/user/corpus/pretrain/bert-ancient-chinese/  --do_train True  --do_eval True    --do_test True    --max_seq_length 256     --train_file data/trainx.txt     --eval_file data/testx.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 20     --train_batch_size 32  --eval_batch_size 32   --learning_rate 5e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_argsx5532.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/labelx5532.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model

python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/labelx5532.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tjx5532.txt

sleep 10m
python ner.py    --model_name_or_path /home/user/corpus/pretrain/bert-ancient-chinese/  --do_train True  --do_eval True    --do_test True    --max_seq_length 256     --train_file data/trainx.txt     --eval_file data/testx.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 20     --train_batch_size 08  --eval_batch_size 08   --learning_rate 5e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_argsx5508.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/labelx5508.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model

python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/labelx5508.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tjx5508.txt

sleep 5m
python ner.py    --model_name_or_path /home/user/corpus/pretrain/bert-ancient-chinese/  --do_train True  --do_eval True    --do_test True    --max_seq_length 256     --train_file data/trainx.txt     --eval_file data/testx.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 20     --train_batch_size 16  --eval_batch_size 16   --learning_rate 1e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_argsx1516.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/labelx1516.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model

python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/labelx1516.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tjx1516.txt

sleep 10m
python ner.py    --model_name_or_path /home/user/corpus/pretrain/bert-ancient-chinese/  --do_train True  --do_eval True    --do_test True    --max_seq_length 256     --train_file data/trainx.txt     --eval_file data/testx.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 20     --train_batch_size 32 --eval_batch_size 32   --learning_rate 1e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_argsx1532.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/labelx1532.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model

python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch1/dc/j5516.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch1/tj/tj1516.txt





--model_name_or_path bert-base-chinese  --do_train True  --do_eval True    --do_test True    --max_seq_length 205     --train_file data/jtrain.txt     --eval_file data/jtest.txt    --test_file data/jpredict.txt    --train_batch_size 16   --eval_batch_size 16     --num_train_epochs 20   --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch1/dc/training_argsj5516.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch1/dc/j5516.txt    --learning_rate 5e-5    --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch1/model
