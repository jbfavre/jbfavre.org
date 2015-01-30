---
layout: post
title: "High throughput Zabbix monitoring"
category: monitoring
---

Zabbix monitoring has 2 main mode:

- `Zabbix agent`, also called passive agent. In this mode, the server will open
  a connection to ask the agent about a specific item.
- `Zabbix agent active`: at start, the agent will ask for what he has to do to
  the server. Then, he will do his job and send items has wanted by the server.
  Periodically, the agent will refresh its job's list from the server.
- `Zabbix Trapper`: in  this mode, any piece of software will be able to send
  items as bulk to the Zabbix server which will, in turn, accept or reject it.

The last mode is particularily interesting when you want to achieve high
throughput monitoring. Because many items are sent in a single connection, we
can save a lot of ressource on server side, thus being able to monitor much more
items with same hardware.

At Blablacar, we almost monitor everything as trapper. That allows us to get a
little more than 14k items each minute on a single virtual machine using less
than 1GB of memory and small load average since we never run above 2.

We choose to use Zabbix, at least for 2 reasons:

- The capactiy to send metric (called `items` in Zabbix world) as bulk, thanks
  to `Zabbix Trapper` mode
- The `Low Level Discovery` feature which allows Zabbix to auto-magically
  discover what he has to monitor.

We'll see how it works and how we can use them.  
I won't repeat the official documentation, which is pretty clear:

- [Zabbix Trapper Items](https://www.zabbix.com/documentation/2.4/manual/config/items/itemtypes/trapper)
- [Zabbix Sender protocol](https://www.zabbix.org/wiki/Docs/protocols/zabbix_sender/2.0)


## Zabbix trapper

When you setup `Trapper items`, Zabbix server assume that these items will come
by themselves to him.  
To send Trapper items to Zabbix, you have many choices: either using
`zabbix_sender`, or implementing `Zabbix Sender` protocol into you script or app.

Since we only use Python to develop our new monitoring probes, I decided to write
a [Python module to implement Zabbix Sender Protocol](https://github.com/jbfavre/python-zabbix).
The code is available on my personal Github account and, of course, you're
encourages to contribute :)

Let's see a sample script to send items as Trappers:

    #!/usr/bin/env python

    ''' import module '''
    import zabbix

    ''' create DataContainer, providing data_type, zabbix server and port '''
    zbx_container = zabbix.DataContainer("items", "localhost", 10051)

    ''' set debug '''
    zbx_container.set_debug(True)
    zbx_container.set_verbosity(True)

    ''' Add items one after the other '''
    hostname="myhost"
    item="my.zabbix.item"
    value=0
    zbx_container.add_item( hostname, item, value)

    ''' or use bulk insert '''
    data = {
        "myhost1": {
            "my.zabbix.item1": 0,
            "my.zabbix.item2": "item string"
        },
        "myhost2": {
            "my.zabbix.item1": 0,
            "my.zabbix.item2": "item string"
        }
    }
    zbx_container.add(data)

    ''' Send data to zabbix '''
    ret = zbx_container.send(zbx_container)
    ''' If returns False, then we got a problem '''
    if not ret:
        print "Ooops. Something went wrong when sending data to Zabbix"

    print "Everything is OK"

If you look into

## Low Level Discovery

## How to use Low Level Discovery
