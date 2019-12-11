as yet unclassified
makeMIDIController: evt

	self world activeHand attachMorph:
		(MIDIControllerMorph new midiPort: midiPort).
