Class {
	#name : #SebasScripts,
	#superclass : #Object,
	#category : #'Sebas-Scipts'
}

{ #category : #abstract }
SebasScripts class >> installIllimani [

	EpMonitor disableDuring: [
		Metacello new
			baseline: 'AllocationProfiler';
			repository: 'github://jordanmontt/illimani-memory-profiler:main';
			load ]
]

{ #category : #abstract }
SebasScripts class >> installIllimani: aBuilder [

	<worldMenu>
	(aBuilder item: #InstallIllimani)
		action: [ self installIllimani ];
		label: 'Illimani';
		parent: #SebasInstall;
		order: 1
]

{ #category : #'world menu' }
SebasScripts class >> sebasOn: aBuilder [

	<worldMenu>
	(aBuilder item: #SebasScripts)
		label: 'Sebas''s Scripts';
		order: 110;
		icon: ((self iconNamed: #scriptManager) scaledToSize: 16 @ 16);
		with: [
			(aBuilder item: #SebasInstall)
			label: 'Install';
			order: 1;
			icon: (self iconNamed: #smallLoadProject) ]
]
