## Environment

### python

```sh
python3 -m virtualenv .
source bin/activate
pip3 install xgboost
```

### R

```sh
install.packages('xgboost')
```

## Comparison

```sh
python3 test.py
R --no-save < test.R
```

## Result

```txt
...
> max(abs(pred.R - pred.python))
[1] 0.00152719
```

結果在數值上有一些差距。最大的預測差距是0.00152719。的確會有數值上的不同。不過不同的科學運算軟體，會因為使用的數值運算函式庫不同，而有不同的數值。可能的差異來源有training或prediction。在下任何判斷之前還需要更進一步的研究。
