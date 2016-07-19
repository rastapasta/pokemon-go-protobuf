my @finals;
sub parseDir {
	my ($name, $path) = @_;
	opendir(DIR, $path);
	my @content = readdir(DIR);
	closedir(DIR);

	my %toImport;
	my $concat;
	my $hasPackage = 0;
	for (@content) {
		next if /^\./;
		if (-d $path."/".$_) {
			my $n = $name ? $name.".".$_ : $_;
			parseDir($n, $path."/".$_);
		} elsif (/\.proto/) {
			open(F, "<$path/$_");
			while(<F>) {
				unless(/^syntax/ or /^package/ and $hasPackage) {
					if (m#^import.+?"(.+?)/[^/]+\.proto#) {
						my $f = "POGOProtos/".$1;
						$f =~ s/\//./g;
						$toImport{$f} = 1;
					} else {
#						s/repeated ([us]*int\d{2}[^\[]+);/repeated $1 [packed=true];/;
						$concat .= $_ unless m#^import #
					}
				}
			}
			$hasPackage = 1
		}
	}
	open (F, ">POGOProtos/$name.proto");
	print F 'syntax = "proto3";', $/;
	if ($name =~ /\./) {
		for (keys %toImport) {
			print F 'import public "'.$_.'.proto";',$/ if $name ne $_;
		}
		print F $concat;
		push @finals, 'import public "'.$name.'.proto";';
	} else {
		print F "package POGOProtos;", $/;
		$concat =~ s/^(import |package).+\n//gm;
		print F join($/, @finals);
		print F $concat;
	}
	close(F);
}
parseDir("POGOProtos", "pogo");
