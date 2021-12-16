using System;
using System.Collections.Generic;
using System.Linq;
using GameLibrary;

namespace GameConsole
{
    class Program
    {
        static World world;
        static void Main(string[] args)
        {
            //World creation is moved to "reset" command DoResetCmd()

            //World world = new World();
            //WorldBasicTriplex(world);

            //Time is moved to "tick" command DoTickCmd()

            //IGameTime time = world;
            //// loop it
            //time.tick(1);

            //Moved to the "score" command DoDisplayReportCmd()

            //foreach (var item in world.node)
            //{
            //    Console.WriteLine($"{item.GetType().Name}\tstorage: {item.storage}\tcapacity: {item.capacity}");
            //}

            //Interpreter
            string[] cmdArgs = new string[] { };
            string[] cmdProps = new string[] { };
            var cmd = "reset";
            var createMode = false;
            while (cmd.ToLower() != "quit")
            {
                if (createMode)
                {
                    DoCreateWorldCmd(cmd, cmdArgs);
                }
                else
                {
                    switch (cmd.ToLower())
                    {
                        case "tick": DoTickCmd(cmdArgs); break;
                        case "score": DoDisplayReportCmd(cmdArgs); break;
                        case "create": { createMode = true; }; break;
                    }
                }
                cmd = string.Empty;
                var cmdLine = Console.ReadLine();
                cmdProps = cmdLine.Split(" ", StringSplitOptions.RemoveEmptyEntries | StringSplitOptions.TrimEntries);

                if (cmdProps.Length == 0)
                {
                    cmd = cmdLine.Trim();
                }
                else
                    cmd = cmdProps[0];
                if (cmdProps.Length > 1)
                {
                    cmdArgs = new string[cmdProps.Length - 1];
                    Array.Copy(cmdProps, 1, cmdArgs, 0, cmdProps.Length - 1);
                }

                else
                    cmdArgs = new string[] { };
            }
        }
        static void DoAddProducerCmd(string[] args)
        {
            Producer producer = new Producer(250, 5); ;
            world.node.Add(producer);
        }
        static void DoAddConsumerCmd(string[] args)
        {
            Consumer consumer = new Consumer(250, 0);
            world.node.Add(consumer);
        }
        static void DoAddWaypointCmd(string[] args)
        {
            Waypoint waypoint = new Waypoint();
            world.node.Add(waypoint);
        }
        static void DoAddRouteLegCmd(string[] args)
        {
            var ways = new List<RouteLeg>();
            RouteLeg routeLeg = new RouteLeg();
            Route route = new Route();
            routeLeg.up = waypoint;
            routeLeg.down = consumer;
            routeLeg.length = 2;
        }
        static void DoAddRouteCmd(string[] args)
        {
            // var ways = new List<RouteLeg>();
            // RouteLeg routeLeg = new RouteLeg();
            // Route route = new Route();
            // ways.Add(routeLeg);
            // routeLeg.up = waypoint;
            // routeLeg.down = consumer;
            // routeLeg.length = 2;
            // route.hop.Add(routeLeg);
            // routeLeg = new RouteLeg();
            // ways.Add(routeLeg);
            // routeLeg.up = producer;
            // routeLeg.down = waypoint;
            // routeLeg.length = 2;
            // route.hop.Add(routeLeg);
            // route.Lenght = route.hop.Sum(rl => rl.length);
            // world.park.units.First().setRoute(route);
        }
        static void DoCreateWorldCmd(string cmd, string[] cmdArgs)
        {
            switch (cmd.ToLower())
            {
                case "reset": DoResetCmd(cmdArgs); break;
                case "ap": case "addproducer": DoAddProducerCmd(cmdArgs); break;
                case "aw": case "addwaypoint": DoAddWaypointCmd(cmdArgs); break;
                case "ac": case "addconsumer": DoAddConsumerCmd(cmdArgs); break;
                case "al": case "addroutelog": DoAddRouteLegCmd(cmdArgs); break;
                case "ar": case "addroute": DoAddRouteCmd(cmdArgs); break;
            }

        }
        static void DoTickCmd(string[] args)
        {
            double tickTime = 1;
            int moves = 1;
            if (args.Length > 0)
                int.TryParse(args[0], out moves);
            for (int i = 0; i < moves; i++)
            {
                world.tick(tickTime);
            }

        }

        static void DoResetCmd(string[] args)
        {
            world = new World();
        }

        static void DoDisplayReportCmd(string[] args)
        {
            Console.WriteLine($"Verties");
            foreach (var item in world.node)
            {
                Console.WriteLine($"{item.GetType().Name}\tstorage: {item.storage}\tcapacity: {item.capacity}");
            }
            Console.WriteLine($"Transport Units");
            foreach (var item in world.park.units)
            {
                Console.WriteLine($"{item.GetType().Name}\tstorage: {item.storage}\tcapacity: {item.capacity}\tSpeed:{item.speed}\tOn leg:{item.traveledOnLeg} of {item.currentLeg.length}\tOn route:{item.traveledDistance} of {item.route.Lenght}");
            }
        }


        static List<Vertex> WorldBasic()
        {
            var nodes = new List<Vertex>();
            Producer producer = new Producer(250, 5);
            nodes.Add(producer);
            Consumer consumer = new Consumer(250, 0);
            nodes.Add(consumer);

            return nodes;
        }

        static void WorldBasicTriplex(World world)
        {
            var nodes = world.node;
            Producer producer = new Producer(250, 5); ;
            nodes.Add(producer);
            Waypoint waypoint = new Waypoint();
            nodes.Add(waypoint);
            Consumer consumer = new Consumer(250, 0);
            nodes.Add(consumer);

            var ways = new List<RouteLeg>();
            RouteLeg routeLeg = new RouteLeg();
            Route route = new Route();
            ways.Add(routeLeg);
            routeLeg.up = waypoint;
            routeLeg.down = consumer;
            routeLeg.length = 2;
            route.hop.Add(routeLeg);
            routeLeg = new RouteLeg();
            ways.Add(routeLeg);
            routeLeg.up = producer;
            routeLeg.down = waypoint;
            routeLeg.length = 2;
            route.hop.Add(routeLeg);

            route.Lenght = route.hop.Sum(rl => rl.length);
            // foreach (var rl in route.hop)
            // {
            //     route.Lenght += rl.length;
            // }

            world.park.units.First().setRoute(route);

        }

        static List<Vertex> World1()
        {
            var nodes = new List<Vertex>();
            Producer producer = null;
            for (int i = 1; i < 4; i++)
            {
                producer = new Producer(234, i);
                nodes.Add(producer);
            }
            Consumer consumer = null;
            for (int i = 1; i < 3; i++)
            {
                consumer = new Consumer(567, i);
                nodes.Add(consumer);
            }
            return nodes;
        }
    }
}
