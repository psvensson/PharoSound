baselines
baseline: spec
    <baseline>
    spec for: #common do: [					
       "Packages"       
			spec package: 'SoundMorphicExtension'.
			spec package: 'SoundMorphicUserInterface'
				with: [ spec requires: #('Sound') ]..
			spec package: 'SoundScores'.
			spec package: 'Sound'
				with: [ spec requires: #('SoundMorphicExtension') ].]