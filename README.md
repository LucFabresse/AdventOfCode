# Advent Of Code with Pharo

Thanks to [juliendelplanque/AdventOfCode2017WithPharo](https://github.com/juliendelplanque/AdventOfCode2017WithPharo), I started to play with [http://adventofcode.com/2017](http://adventofcode.com/2017).

All my source code is in the `src` subfolder.


## Iceberg UI loading method

You can load it in Pharo using Iceberg following these steps:

- Open Iceberg
- click on the `Clone Repository` button

		Remote Url: git@github.com/xxxx (either juliendelplanque repo or mine)
		Local Directory: <leave default path>
		Code subdirectory: lucfabresse/src
		
- Select the newly created repo named `AdventOfCode2017WithPharo`
- Select the `packages` tab
- select `Load package` in the contextual menu of the `AdventOfCode` package

Then browse my `AdventOfCode` package

## Iceberg script (Pharo 7.0 only)
	
	"customize the following 3 lines if needed"
	repoURL := 'git@github.com:LucFabresse/AdventOfCode2017.git'.
	baselineName := 'AdventOfCode'.
	subdirectoryName := 'src'.
	
	repo := IceRepositoryCreator new 
		remote: (IceRemote url: repoURL);
		subdirectory: subdirectoryName;
		createRepository.
	repo register.
	icePackageBaseline := repo savedPackages detect: [ :p | p name = ('BaselineOf', baselineName) ].
	icePackageBaseline loadLatest.

	Metacello new
		repository: 'gitlocal://', icePackageBaseline location parent fullName;
		baseline: baselineName;
		load: #()	

## Non-Iceberg loading method

	Metacello new
	  baseline: 'AdventOfCode';
	  repository: 'github://LucFabresse/AdventOfCode2017:master/src';
	  load.