#!/bin/bash
timestamp=`date +%Y%m%d%H%M%S`
rm Logs/*.log#!/bin/bash

python -u run.py \
  --root_path /git/datasets/ \
  --data_path traffic.csv \
  --model_id traffic \
  --model ETSformer \
  --data custom \
  --features M \
  --seq_len 336 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 2 \
  --enc_in 862 \
  --dec_in 862 \
  --c_out 862 \
  --des 'Exp' \
  --K 3 \
  --learning_rate 1e-3 \
  --itr 1  2>&1 |tee -a Logs/${timestamp}.log

python -u run.py \
  --root_path /git/datasets/ \
  --data_path traffic.csv \
  --model_id traffic \
  --model ETSformer \
  --data custom \
  --features M \
  --seq_len 336 \
  --pred_len 192 \
  --e_layers 2 \
  --d_layers 2 \
  --enc_in 862 \
  --dec_in 862 \
  --c_out 862 \
  --des 'Exp' \
  --K 3 \
  --learning_rate 1e-3 \
  --itr 1  2>&1 |tee -a Logs/${timestamp}.log


python -u run.py \
  --root_path /git/datasets/ \
  --data_path traffic.csv \
  --model_id traffic \
  --model ETSformer \
  --data custom \
  --features M \
  --seq_len 336 \
  --pred_len 336 \
  --e_layers 2 \
  --d_layers 2 \
  --enc_in 862 \
  --dec_in 862 \
  --c_out 862 \
  --des 'Exp' \
  --K 3 \
  --learning_rate 1e-3 \
  --itr 1  2>&1 |tee -a Logs/${timestamp}.log


python -u run.py \
  --root_path /git/dataset/ \
  --data_path traffic.csv \
  --model_id traffic \
  --model ETSformer \
  --data custom \
  --features M \
  --seq_len 336 \
  --pred_len 720 \
  --e_layers 2 \
  --d_layers 2 \
  --enc_in 862 \
  --dec_in 862 \
  --c_out 862 \
  --des 'Exp' \
  --K 3 \
  --learning_rate 1e-3 \
  --itr 1  2>&1 |tee -a Logs/${timestamp}.log

