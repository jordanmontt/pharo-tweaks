Class {
	#name : #SebasWorldMenuToolbarExtension,
	#superclass : #Object,
	#category : #'Sebas-Scipts'
}

{ #category : #installing }
SebasWorldMenuToolbarExtension class >> installEditDistances [

	EpMonitor disableDuring: [
		Metacello new
			repository: 'github://pharo-ai/edit-distances/src';
			baseline: 'AIEditDistances';
			load ]
]

{ #category : #installing }
SebasWorldMenuToolbarExtension class >> installIllimani [

	EpMonitor disableDuring: [
		Metacello new
			baseline: 'AllocationProfiler';
			repository: 'github://jordanmontt/illimani-memory-profiler:main';
			load ]
]

{ #category : #installing }
SebasWorldMenuToolbarExtension class >> installPharoAiMeta [

	EpMonitor disableDuring: [
		Metacello new
			baseline: 'AIPharo';
			repository: 'github://pharo-ai/ai/src';
			onWarningLog;
			onConflictUseIncoming;
			load ]
]

{ #category : #'world menu' }
SebasWorldMenuToolbarExtension class >> pharoAi: aBuilder [

	<worldMenu>
	(aBuilder item: #pharoAiPharoAi)
	action: [ self installPharoAiMeta ];
		label: 'pharo-ai meta script';
		parent: #pharoAi;
		order: 1;
		icon: (self iconNamed: #smallLoadProject).
	
	(aBuilder item: #EditDistances)
		action: [ self installEditDistances ];
		label: 'Edit distances';
		parent: #pharoAi;
		order: 2;
		icon: (self iconNamed: #smallLoadProject)
]

{ #category : #'world menu' }
SebasWorldMenuToolbarExtension class >> sebasOn: aBuilder [

	<worldMenu>
	(aBuilder item: #SebasWorldMenuToolbarExtension)
		label: 'Sebas''s Scripts';
		order: 110;
		icon: ((self iconNamed: #scriptManager) scaledToSize: 16 @ 16);
		with: [
			(aBuilder item: #InstallIllimani)
				action: [ self installIllimani ];
				label: 'Install Illimani';
				parent: #SebasWorldMenuToolbarExtension;
				order: 1;
				icon: (self iconNamed: #smallLoadProject);
				withSeparatorAfter.

			(aBuilder item: #pharoAi)
				label: 'pharo-ai';
				parent: #SebasWorldMenuToolbarExtension;
				order: 1;
				icon: (self iconNamed: #smallObjects);
				withSeparatorAfter ]
]
