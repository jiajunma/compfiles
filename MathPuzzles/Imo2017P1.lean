/-
Copyright (c) 2023 David Renshaw. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Renshaw
-/

import Mathlib.Tactic

import MathPuzzles.Meta.ProblemExtraction

#[problem_setup]/-!
# International Mathematical Olympiad 2017, Problem 1

For any integer a₀ > 1, define the sequence

  aₙ₊₁ =   √aₙ, if aₙ is a perfect square
        or aₙ + 3 otherwise.

Find all values of a₀ for which there exists A such that aₙ = A for
infinitely many values of n.

-/

#[problem_setup] namespace Imo2017P1

#[problem_setup]
noncomputable def a (a0 : ℕ) : ℕ → ℕ
| 0 => a0
| n + 1 => if (Nat.sqrt (a a0 n))^2 = a a0 n
           then Nat.sqrt (a a0 n)
           else a a0 n + 3

fill_in_the_blank solution_set : Set ℕ := sorry

problem imo2017_p1 (a0 : ℕ) :
    a0 ∈ solution_set ↔ ∃ A, { n | a a0 n = A }.Infinite := by
  sorry

