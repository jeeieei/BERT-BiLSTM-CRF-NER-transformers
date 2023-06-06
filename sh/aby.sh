#! /bin/bash
while pgrep -f "bash ./sh/q.sh" > /dev/null;do
	 sleep 30m
done

python ner.py    --model_name_or_path /home/user/corpus/pretrain/bert-ancient-chinese/  --do_train True  --do_eval True    --do_test True    --max_seq_length 256     --train_file data/train.txt     --eval_file data/test.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 10     --train_batch_size 16   --eval_batch_size 16   --learning_rate 5e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_args551610.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label551610.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model
python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label551610.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj551610.txt



sleep 10m
python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/labelz5516.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tjz5516.txt
python ner.py    --model_name_or_path /home/user/corpus/pretrain/bert-ancient-chinese/  --do_train True  --do_eval True    --do_test True    --max_seq_length 256     --train_file data/ztrain.txt     --eval_file data/ztest.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 10     --train_batch_size 04   --eval_batch_size 04   --learning_rate 1e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_argsz1504.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/labelz1504.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model



python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/labelz1504.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tjz1504.txt
python ner.py    --model_name_or_path /home/user/corpus/pretrain/bert-ancient-chinese/  --do_train True  --do_eval True    --do_test True    --max_seq_length 256     --train_file data/ztrain.txt     --eval_file data/ztest.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 10     --train_batch_size 16   --eval_batch_size 16   --learning_rate 5e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_argsz5516.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/labelz5516.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model

python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/labelz5516.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tjz5516.txt

sleep 10m

python ner.py    --model_name_or_path /home/user/corpus/pretrain/bert-ancient-chinese/  --do_train True  --do_eval True    --do_test True    --max_seq_length 256     --train_file data/ztrain.txt     --eval_file data/ztest.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 10     --train_batch_size 08   --eval_batch_size 08   --learning_rate 5e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_argsz5508.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/labelz5508.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model

python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/labelz5508.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tjz5508.txt



python ner.py    --model_name_or_path /home/user/corpus/pretrain/bert-ancient-chinese/  --do_train True  --do_eval True    --do_test True    --max_seq_length 256     --train_file data/ptrain.txt     --eval_file data/ptest.txt    --test_file data/ppredict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 1     --train_batch_size 32   --eval_batch_size 32   --learning_rate 5e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_argsp551610.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/labelp551610.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model


python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj.txt


python ner.py    --model_name_or_path /home/user/corpus/pretrain/bert-ancient-chinese/  --do_train True  --do_eval True    --do_test True    --max_seq_length 256     --train_file data/ztrain3.txt     --eval_file data/ztest.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 20     --train_batch_size 08   --eval_batch_size 08   --learning_rate 5e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_argsz55083.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/labelz55083.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model

