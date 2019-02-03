;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	nodo1.example.com. root.localhost. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	nodo1.example.com.

$ORIGIN example.com.
nodo1	IN	A	{{ ip_nodo1 }}
nodo2	IN	A	{{ ip_nodo2 }}
drupal	IN	CNAME	nodo2
