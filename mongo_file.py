import math
from hyperopt import tpe, hp, fmin
from hyperopt.mongoexp import MongoTrials


trials = MongoTrials('mongo://localhost:27017/foo_db/jobs', exp_key='exp2')

best = fmin(math.cos, hp.uniform('x', -2, 2), trials=trials, algo=tpe.suggest, max_evals=20)

print(best)
