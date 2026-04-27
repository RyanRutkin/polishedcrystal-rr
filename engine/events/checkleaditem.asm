Special_CheckLeadItemIsLoadedDice:
	ld a, [wPartyMon1Item]
	cp LOADED_DICE
    jr z, .HasLoadedDice
    ld a, FALSE
    ldh [hScriptVar], a
	ret

.HasLoadedDice
    ld a, TRUE
    ldh [hScriptVar], a
	ret
