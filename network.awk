
function iptodecimal(addrstring) {
# takes an ip address as a chunk of text and returns it in decimal notation

	split(addrstring, netpiece, ".")
	decimal = (256 * 256 * 256 * netpiece[1]) + (256 * 256 * netpiece[2]) + (256 * netpiece[3]) + (netpiece[4])

	return decimal
}

function decimaltoip(num) {
	firstoctet = int(num / 16777216)
	secondoctet = int((num % 16777216) / 65536)
	thirdoctet = int(((num % 16777216) % 65536) / 256)
	fourthoctet = ((num % 16777216) % 65536) % 256

	#print num " converts to " firstoctet "." secondoctet "." thirdoctet "." fourthoctet

	return firstoctet "." secondoctet "." thirdoctet "." fourthoctet
}

function masktonetsize(mask) {
# return the number of addresses possible
# for a given network mask

	if (mask == "255.255.255.255") { size = 1 }
	if (mask == "255.255.255.254") { size = 2 }
	if (mask == "255.255.255.252") { size = 4 }
	if (mask == "255.255.255.248") { size = 8 }
	if (mask == "255.255.255.240") { size = 16 }
	if (mask == "255.255.255.224") { size = 32 }
	if (mask == "255.255.255.192") { size = 64 }
	if (mask == "255.255.255.128") { size = 128 }
	if (mask == "255.255.255.0") { size = 256 }
	if (mask == "255.255.254.0") { size = 512 }
	if (mask == "255.255.252.0") { size = 1024 }
	if (mask == "255.255.248.0") { size = 2048 }
	if (mask == "/32") { size = 1 }
	if (mask == "/31") { size = 2 }
	if (mask == "/30") { size = 4 }
	if (mask == "/29") { size = 8 }
	if (mask == "/28") { size = 16 }
	if (mask == "/27") { size = 32 }
	if (mask == "/26") { size = 64 }
	if (mask == "/25") { size = 128 }
	if (mask == "/24") { size = 256 }
	if (mask == "/23") { size = 512 }
	if (mask == "/22") { size = 1024 }
	if (mask == "/21") { size = 2048 }

	#print "masktonetsize returning " size

	return size 

}

function masktoprefix(mask) {

	if (mask == "255.255.255.255") { prefix = "/32" }
	if (mask == "255.255.255.254") { prefix = "/31" }
	if (mask == "255.255.255.252") { prefix = "/30" }
	if (mask == "255.255.255.248") { prefix = "/29" }
	if (mask == "255.255.255.240") { prefix = "/28" }
	if (mask == "255.255.255.224") { prefix = "/27" }
	if (mask == "255.255.255.192") { prefix = "/26" }
	if (mask == "255.255.255.128") { prefix = "/25" }
	if (mask == "255.255.255.0") { prefix = "/24" }
	if (mask == "255.255.254.0") { prefix = "/23" }
	if (mask == "255.255.252.0") { prefix = "/22" }
	if (mask == "255.255.248.0") { prefix = "/21" }

	return prefix
}

function findnet(address, mask) {
# find the network address for a corresponding
# ip address

	netsize = masktonetsize(mask)

	networkdecimal = iptodecimal(address) - (iptodecimal(address) % netsize)

	networkip = decimaltoip(networkdecimal)

	# determine if mask is already in prefix notation e.g. /30
	if (substr(mask, 1, 1) == "/") {
		networkip = networkip "" mask
	} else {
		networkip = networkip "" masktoprefix(mask)
	}

	#print "networkip is " networkip

	return networkip
}

BEGIN {
	hostnameregexp = "^hostname "
	intregexp = "^interface [A-Za-z]+"
	ipregexp = "ip address [0-9]+\."
	hostnamefound = 0
	intfound = 0
	ipfound = 0
	ignoreint = 0
	linenumber = 0
	numints = 0
}
{
	linenumber++

	#print "examining: " $0

	if (match($0, hostnameregexp)) {
		hostnamefound = 1
		hostname = $2
		next
	}

	if (match($0, intregexp) && !intfound) {
		intname = $2

		# since files may be in DOS format, strip the ^M off
		if (substr(intname, length(intname), 1) != /0-9a-zA-Z/) {
			intname = substr(intname, 0, length(intname) - 1)
		}
		#print "found interface " intname
		intfound = 1
		next
	}

	if (match($0, intregexp) && intfound) {
		print "found interface " $2 " but already examining interface " intname " at line number " linenumber " - aborting"
		exit 1
	}

	if (intfound && match($0, ipregexp)) {
		if (match($5, "secondary")) {
			#print $3 " and netmask " $4 " is a secondary address and will be ignored"
		} else {
			ipaddress = $3
			netmask = $4
			ipfound = 1

			# since files may be in DOS format, strip the ^M off
			if (substr(netmask, length(netmask), 1) != /0-9/) {
				netmask = substr(netmask, 0, length(netmask) - 1)
			}
			#print "found ip address of " ipaddress " and netmask of " netmask " under interface " intname
		}
		next
	}

	if (match($0, "shutdown")) {
		if (!intfound) {
			print "found shutdown command with no corresponding interface at line number " linenumber " - aborting"
			exit 1
		}
		#print "interface " intname " is shutdown and will be ignored"
		ignoreint = 1
		next
	}

	if (match($0, /^!/) && intfound) {
		#print "closing out of interface " intname
		if (ignoreint) {
			#print "ignoring interface " intname
		} else {
			if (ipfound) {
				#print "processing interface " intname
				/* process the interface address, report on the network */
				print intname " - " ipaddress " belongs to network " findnet(ipaddress, netmask)
				intlist[++numints] = intname ":" ipaddress ":" findnet(ipaddress, netmask)
			} else {
				#print "ignoring interface " intname " due to no address assigned"
			}
		}
		intfound = 0
		ipfound = 0
		ignoreint = 0
		intname = "none"
	}
}
END {
	#print "examined " linenumber " lines"

	if (!hostnamefound) {
		print "could not determine hostname - aborting"
		exit 1
	} else {
		if (substr(hostname, length(hostname), 1) != /0-9a-zA-Z/) {
			hostname = substr(hostname, 1, length(hostname) - 1)
		}
		printf "%s", hostname
		for (loop = 1; loop <= numints; loop++) {
			printf ":%s", intlist[loop]
		}
		printf "\n"
	}
}
