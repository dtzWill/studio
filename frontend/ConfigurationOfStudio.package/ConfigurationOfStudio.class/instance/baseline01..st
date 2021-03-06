baselines
baseline01: spec
	<version: '0.1-baseline'>
	
	spec for: #common do: [
		spec
			blessing: #baseline;
			repository: 'github://studio/studio:master/frontend'.
		
		spec
			package: 'Studio-extensions' with: [
				spec requires: #('Roassal2') ];
			package: 'Studio-Nix' with: [
				spec requires: #('Studio-extensions' 'NeoJSON' 'CommandShell') ];
			package: 'Studio-DWARF' with: [
				spec requires: #('Studio-extensions' 'NeoJSON') ];
			package: 'Studio-RaptorJIT' with: [
				spec requires: #('Studio-extensions' 'Studio-DWARF' 'Roassal2' 'MessagePack') ].

		spec project: 'NeoJSON' with: [
			spec
				className: #ConfigurationOfNeoJSON;
				versionString: #'stable';
				repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo40/main/' ].
			
		spec project: 'Roassal2' with: [
			spec
				versionString: #'stable';
				className: #ConfigurationOfRoassal2;
				repository: 'http://www.smalltalkhub.com/mc/ObjectProfile/Roassal2/main' ].

		spec project: 'CommandShell' with: [ 
			spec
				versionString: #'stable';
				className: #ConfigurationOfCommandShell;
				repository: 'http://www.squeaksource.com/CommandShell' ].

		spec project: 'MessagePack' with: [ 
			spec
				versionString: #'stable';
				className: #ConfigurationOfMessagePack;
				repository: 'http://smalltalkhub.com/mc/MasashiUmezawa/MessagePack/main'. ].
		].