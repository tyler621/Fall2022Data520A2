#!/usr/bin/perl
use CGI; 
$query     = new CGI;
$act       = $query->param('act');
$password  = $query->param('password');
$interface = $query->url_param('interface');

if ( $act eq "Display source" ) {
    if ( $password eq "tylerschoice" ) {
	print( "Content-type: text/plain\n\n" );
	system("cat login.cgi;echo '\n\n\n\n\n';cat login.pl;echo '\n\n\n\n\n';cat login.java" );
	system("cat bookstore.html;echo '\n\n\n\n\n';cat bookstore.php;echo '\n\n\n\n\n';cat show.html" );
	system("cat show.php;echo '\n\n\n\n\n\';cat purchase.html; echo '\n\n\n\n\n';cat purchase.php");
    }  
    else {
	print( "Content-type: text/html\n\n" );
	print( "<center><font size='+2'><b>Wrong password: </b>" );
	print( "<i>$password</i></font>" );
	print( "<form><input type='button' value='Back' onclick='history.go(-1);return false;' /></center>" );
    }
}
elsif ( $act eq "Help" ) {
    print ( "Content-type: text/html\n\n" );
    system( "/bin/cat help.html" );
}

else {
    print( "Content-type: text/html\n\n" );
    print( "<center><font size='+2'><b>No such option: </b>" );
    print( "<i>$act</i></font></center>" );
}
