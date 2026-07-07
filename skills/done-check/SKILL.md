---
name: done-check
description: Use when about to say done, finished, or ready, before reporting completion, or before handing work to a verifier; evidence-first self-check by the executor, while verifying is a verifier accepting someone else's work.
---

# Done-check

Every claim rests on evidence from THIS session: run the five-second command instead of answering from memory. If any item below is a "no", the answer is not ready.

## Checklist

1. Is every fact in the answer obtained by a command or a file read in THIS session?
2. Were tests/build actually run, with the output visible? "Should work" is not an answer.
3. Did the project's own gate run after the change — build/lint/tests, whatever the repo's charter names?
4. Are all paths, flags, and names in the answer real — confirmed via `--help` when in doubt, or marked "not verified"?
5. Are secrets kept out of output, commits, and logs — .env, session files, cookies, tokens checked before pasting?
6. Are temporary terminals, processes, and files cleaned up?
7. Is the first sentence of the answer the outcome, not the process?
8. Is every claim labeled `VERIFIED` (ran it, saw the output), `REASONED` (follows from verified facts), or `ASSUMED` (did not check), with no silent upgrade from `ASSUMED` to `VERIFIED`?
