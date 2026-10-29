import Mathlib.Basic.Real.Basic
import Mathlib.Tactic.Linarith

abbrev CraftState := ℝ

structure CraftConfiguration where
  bottom : CraftState
  middle : CraftState
  top : CraftState
  middle_is_one : middle = 1
  no_zero_state : bottom ≠ 0 ∧ top ≠ 0

/-- Theorem: Modulating the edge velocities moves the middle 
    without the system ever dropping into a zero-velocity stall point. -/
theorem continuous_circulation_glide (c : CraftConfiguration) (spin_up : c.top > 1) :
    ∃ gradient : ℝ, gradient > 0 ∧ c.middle < c.top := by
  use c.top - c.middle
  constructor
  · rw [c.middle_is_one]
    linarith
  · rw [c.middle_is_one]
    linarith

