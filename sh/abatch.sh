#! /bin/bash

python ner.py    --model_name_or_path /home/user/corpus/pretrain/bert-ancient-chinese/  --do_train True  --do_eval True    --do_test True    --max_seq_length 256     --train_file data/train.txt     --eval_file data/test.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 20     --train_batch_size 32   --eval_batch_size 32   --learning_rate 1e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_args153220.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label153220.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model

python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label153220.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj153220.txt


sleep 5m

python ner.py    --model_name_or_path /home/user/corpus/pretrain/bert-ancient-chinese/  --do_train True  --do_eval True    --do_test True    --max_seq_length 256     --train_file data/train.txt     --eval_file data/test.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 20     --train_batch_size 16   --eval_batch_size 16   --learning_rate 1e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_args151620.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label151620.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model


python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label151620.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj151620.txt


sleep 5m

python ner.py    --model_name_or_path /home/user/corpus/pretrain/bert-ancient-chinese/  --do_train True  --do_eval True    --do_test True    --max_seq_length 256     --train_file data/train.txt     --eval_file data/test.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 20     --train_batch_size 8   --eval_batch_size 8   --learning_rate 1e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_args150820.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label150820.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model


python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label150820.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj150820.txt

sleep 5m

python ner.py    --model_name_or_path /home/user/corpus/pretrain/bert-ancient-chinese/  --do_train True  --do_eval True    --do_test True    --max_seq_length 256     --train_file data/train.txt     --eval_file data/test.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 20     --train_batch_size 4   --eval_batch_size 4   --learning_rate 1e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_args150420.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label150420.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model


python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label150420.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj150420.txt


sleep 5m




python ner.py    --model_name_or_path /home/user/corpus/pretrain/bert-ancient-chinese/  --do_train True  --do_eval True    --do_test True    --max_seq_length 256     --train_file data/train.txt     --eval_file data/test.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 20     --train_batch_size 32   --eval_batch_size 32   --learning_rate 3e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_args353220.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label353220.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model

python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label353220.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj353220.txt


sleep 10m

python ner.py    --model_name_or_path /home/user/corpus/pretrain/bert-ancient-chinese/  --do_train True  --do_eval True    --do_test True    --max_seq_length 256     --train_file data/train.txt     --eval_file data/test.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 20     --train_batch_size 16   --eval_batch_size 16   --learning_rate 3e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_args351620.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label351620.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model


python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label351620.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj351620.txt


sleep 5m

python ner.py    --model_name_or_path /home/user/corpus/pretrain/bert-ancient-chinese/  --do_train True  --do_eval True    --do_test True    --max_seq_length 256     --train_file data/train.txt     --eval_file data/test.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 20     --train_batch_size 8   --eval_batch_size 8   --learning_rate 3e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_args350820.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label350820.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model


python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label350820.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj350820.txt

sleep 5m

python ner.py    --model_name_or_path /home/user/corpus/pretrain/bert-ancient-chinese/  --do_train True  --do_eval True    --do_test True    --max_seq_length 256     --train_file data/train.txt     --eval_file data/test.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 20     --train_batch_size 4   --eval_batch_size 4   --learning_rate 3e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_args350420.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label350420.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model


python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label350420.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj350420.txt


sleep 5m




python ner.py    --model_name_or_path /home/user/corpus/pretrain/bert-ancient-chinese/  --do_train True  --do_eval True    --do_test True    --max_seq_length 256     --train_file data/train.txt     --eval_file data/test.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 20     --train_batch_size 32   --eval_batch_size 32   --learning_rate 5e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_args553220.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label553220.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model

python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label553220.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj553220.txt


sleep 10m

python ner.py    --model_name_or_path /home/user/corpus/pretrain/bert-ancient-chinese/  --do_train True  --do_eval True    --do_test True    --max_seq_length 256     --train_file data/train.txt     --eval_file data/test.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 20     --train_batch_size 16   --eval_batch_size 16   --learning_rate 5e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_args551620.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label551620.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model


python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label551620.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj551620.txt


sleep 5m

python ner.py    --model_name_or_path /home/user/corpus/pretrain/bert-ancient-chinese/  --do_train True  --do_eval True    --do_test True    --max_seq_length 256     --train_file data/train.txt     --eval_file data/test.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 20     --train_batch_size 8   --eval_batch_size 8   --learning_rate 5e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_args550820.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label550820.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model


python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label550820.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj550820.txt

sleep 5m

python ner.py    --model_name_or_path /home/user/corpus/pretrain/bert-ancient-chinese/  --do_train True  --do_eval True    --do_test True    --max_seq_length 256     --train_file data/train.txt     --eval_file data/test.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 20     --train_batch_size 4   --eval_batch_size 4   --learning_rate 5e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_args550420.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label550420.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model


python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label550420.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj550420.txt


sleep 5m




python ner.py    --model_name_or_path /home/user/corpus/pretrain/bert-ancient-chinese/  --do_train True  --do_eval True    --do_test True    --max_seq_length 256     --train_file data/train.txt     --eval_file data/test.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 20     --train_batch_size 32   --eval_batch_size 32   --learning_rate 7e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_args753220.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label753220.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model

python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label753220.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj753220.txt


sleep 10m

python ner.py    --model_name_or_path /home/user/corpus/pretrain/bert-ancient-chinese/  --do_train True  --do_eval True    --do_test True    --max_seq_length 256     --train_file data/train.txt     --eval_file data/test.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 20     --train_batch_size 16   --eval_batch_size 16   --learning_rate 7e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_args751620.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label751620.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model


python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label751620.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj751620.txt


sleep 5m

python ner.py    --model_name_or_path /home/user/corpus/pretrain/bert-ancient-chinese/  --do_train True  --do_eval True    --do_test True    --max_seq_length 256     --train_file data/train.txt     --eval_file data/test.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 20     --train_batch_size 8   --eval_batch_size 8   --learning_rate 7e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_args750820.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label750820.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model


python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label750820.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj750820.txt

sleep 5m

python ner.py    --model_name_or_path /home/user/corpus/pretrain/bert-ancient-chinese/  --do_train True  --do_eval True    --do_test True    --max_seq_length 256     --train_file data/train.txt     --eval_file data/test.txt    --test_file data/predict.txt    --do_lower_case    --logging_steps 200    --need_birnn True     --rnn_dim 256    --clean True  --num_train_epochs 20     --train_batch_size 4   --eval_batch_size 4   --learning_rate 7e-5   --canshu /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/training_args750420.bin   --label_lu  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label750420.txt  --output_dir /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/model


python  Submisission.py  --yclabel  /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/dc/label750420.txt  --tjsj /home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/tj/tj750420.txt









