baselines
baseline: spec
    <baseline>
    spec for: #common do: [					
       "Packages"       
			spec package: 'SoundMorphicExtension'.
			spec package: 'SoundMorphicUserInterface'.
			spec package: 'SoundScores'.
			spec package: 'Sound'
				with: [ spec requires: #('SoundMorphicExtension') ].]