# Crash Fix Tracker

## Planned fixes (approved)
- [ ] Harden `source/ui/menu/freeplay/FreeplayState.hx` against out-of-range indexing during transitions/timers.
- [ ] Validate bounds in `playUnlockSequence()` before using `songs[]`, `grpIcons.members[]`, and `grpSongs.members[]`.
- [ ] Re-guard indexing in `changeSelection()`.
- [ ] Fix `assets/preload/scripts/modules/songs/bot-trot/events.hxc` switch fallthrough / duplicated `case 128`.
- [ ] Add explicit `return;`/termination in bot-trot step cases where appropriate.

## Next step
- After the above, run the game and paste at least one crash stack trace.

