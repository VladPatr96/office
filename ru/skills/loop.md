# loop

Используй для итеративного agent workflow с явными retry и stop conditions.

Цикл: trigger, load rules, execute one bounded unit, fresh-context verify, memory write, stop/retry.

Стоп: success, три retry, budget/time limit, blocked verifier или требуется approval.
