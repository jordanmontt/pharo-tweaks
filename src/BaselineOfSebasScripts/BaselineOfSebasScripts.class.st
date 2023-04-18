Class {
	#name : #BaselineOfSebasScripts,
	#superclass : #BaselineOf,
	#category : #BaselineOfSebasScripts
}

{ #category : #baselines }
BaselineOfSebasScripts >> baseline: spec [

	<baseline>
	spec for: #common do: [
		"Packages"
		spec package: 'SebasScripts'.
		"Groups"
		spec group: 'default' with: #( 'core' ).
		spec group: 'core' with: #( 'SebasScripts' ) ]
]
