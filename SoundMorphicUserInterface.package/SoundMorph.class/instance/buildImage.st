as yet unclassified
buildImage
	| scale env h imageColor |
	owner ifNil: [scale := 128@128]  "Default is 128 pix/second, 128 pix fullscale"
		ifNotNil: [scale := owner soundScale].
	env := sound volumeEnvelopeScaledTo: scale.
	self image: (ColorForm extent: env size @ env max).
	1 to: image width do:
		[:x | h := env at: x.
		image fillBlack: ((x-1)@(image height-h//2) extent: 1@h)].
	imageColor := #(black red orange green blue) atPin:
						(sound pitch / 110.0) rounded highBit.
	image colors: (Array with: Color transparent with: (Color perform: imageColor)).
