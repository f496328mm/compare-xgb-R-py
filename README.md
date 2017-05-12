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

結果在數值上有一些差距。其中最大的差距是0.00152719。所以的確會有數值上的不同。不過不同科學運算軟體，本來就常常出現數值誤差，所以要下任何判斷都還需要更進一步的研究。
