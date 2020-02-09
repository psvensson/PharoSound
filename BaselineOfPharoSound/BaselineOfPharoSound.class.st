Class {
	#name : #BaselineOfPharoSound,
	#superclass : #BaselineOf,
	#category : 'BaselineOfPharoSound'
}

{ #category : #baselines }
BaselineOfPharoSound >> baseline: spec [
    <baseline>
    spec for: #common do: [					
       "Packages"       
			spec package: 'SoundMorphicExtension'.
			spec package: 'SoundMorphicUserInterface'
				with: [ spec requires: #('Sound') ].
			spec package: 'SoundScores'
				with: [ spec requires: #('Sound') ].
			spec package: 'Sound'
				with: [ spec requires: #('SoundMorphicExtension') ].]
]

{ #category : #baselines }
BaselineOfPharoSound >> projectClass [
	^ MetacelloCypressBaselineProject
]
