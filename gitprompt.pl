#!/usr/bin/perl
# Bit if a hack to get the git status into the tcsh prompt.
# Put this script in $HOME/bin/gitprompt.pl and add these lines to your .tcshrc
#   if ( $?prompt && -x /usr/local/bin/git && -x $HOME/bin/gitprompt.pl ) then
#       alias precmd $HOME/bin/gitprompt.pl
#   endif

my $prompt="";
my $GITBR="";

open IF, "/usr/local/bin/git branch 2>/dev/null|" or exit;
while(<IF>) {
  if (/^\* (.*)/) {
    $GITBR=$1;
    last;
  }
}
close IF;

my $GITST=0;
if ( $GITBR ne "" ) {
  open IF, "/usr/local/bin/git status --porcelain 2>/dev/null|" or exit;
  while(<IF>) { $GITST++; }  # Count number of files to check in

  $prompt .= "[git:${GITBR}";
  $prompt .= "*" if ( ${GITST} > 0 );
  $prompt .= "]\n";
}

END {print $prompt;}

1;
