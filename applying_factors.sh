#!/bin/bash
for i in $(seq 0 511)
do
  echo "counter: $i"
  python3 apply_factor_cpu.py -i $i --seeds 3923 -d 10 --output ../outputs/apply_factor --truncation 1.0 --ckpt ../models/ern.pkl ../models/ern-feature-vectors.pt --no-video
  python3 apply_factor_cpu.py -i $i --seeds 3923 -d 50 --output ../outputs/apply_factor --truncation 1.0 --ckpt ../models/ern.pkl ../models/ern-feature-vectors.pt --no-video
done