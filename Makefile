all:
	cd .. ; dpkg-deb --build awslogs-agent ; cd - ; mv ../awslogs-agent.deb .
