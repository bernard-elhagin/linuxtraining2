awk
'@load"filefuncs";@load"readfile";func
send(s,e,d,t,b){print"HTTP/1.0 "s" "e|&S;print"Content-Length: "b|&S;print"Content-Type: "t|&S;print d|&S;close(S);}func
    cf(x){split(x,y,"/");for(z
        in y){print "FOUND "y[z];if(y[z]==".."){return 0;}}return 1;}func
                mt(f){c="file -b --mime-type "f;r="";while((c|getline z)>0){r=r z;}close(c);return r;}
                BEGIN{if(ARGV[1]!=""){if(chdir(ARGV[1])){print "Failed to chdir to "ARGV[1];exit;}ARGC=1;}RS=ORS="\r\n";
                    while(1){S="/inet/tcp/8080/0/0";while((S|&getline l)>0){split(l,f," ");
                    if(f[1]=="GET"){p=substr(f[2],2)}if(p==""){p="index.html"}stat(p,s);if(cf(p)&&s["type"]=="file")
                    {m=mt(p);o=readfile(p);
                    send(200,"OK",o,m,s["size"]);break;}n="<html>Not Found</html>";
                    send(404,"Not Found",n,"text/html"RS,length(n));break;}}}'
