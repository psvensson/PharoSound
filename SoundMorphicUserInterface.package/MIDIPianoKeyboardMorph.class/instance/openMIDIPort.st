as yet unclassified
openMIDIPort

	| portNum |
	portNum := SimpleMIDIPort outputPortNumFromUser.
	portNum ifNil: [^ self].
	midiPort := SimpleMIDIPort openOnPortNumber: portNum.
