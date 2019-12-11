as yet unclassified
closeMIDIPort

	midiSynth isOn ifTrue: [midiSynth stopMIDITracking].
	midiSynth closeMIDIPort.
