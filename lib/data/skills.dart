import 'package:reubey_portfolio/models/skill.dart';

final skills = [
  Skill(
      name: 'C',
      imagePath: "assets/skills/c.png",
      description:
          "I've written production embedded C code used on over 60,000 IoT devices, built in house tools used to test products, developed the bluetooth protocol used by Galleos' newest generation of nRF52 based products, and extensively debugged FreeRTOS-based software.",
      yearsExperience: 4),
  Skill(
      name: 'C#',
      imagePath: "assets/skills/csharp.png",
      description:
          "I've been writting hobby projects in C# for about as long as I can remember, and professionally since I first joined Galleos 7 years ago. I've helped develop servers that manage tens of thousands of TCP connections, integrated SagePay into customer facing sites, and lead a large refactoring project on a multi-platform Xamarin Forms project - and much much more!",
      yearsExperience: 7),
  Skill(
      name: 'Azure',
      imagePath: "assets/skills/azure.png",
      description:
          "From Azure SQL and Cosmos DB to App Services and Azure Functions, I have a strong level of familiarity and experience with much of the Azure eco-system. At my last role I was a big proponent of the organisational power of tools like DevOps, and I'm excited to work with it [or anything similar] further in the future.",
      yearsExperience: 5),
  Skill(
      name: 'Cosmos DB',
      imagePath: "assets/skills/cosmosdb.png",
      description:
          "I've recently had the opportunity to work with Cosmos and NoSQL professionally, and I've loved the speed, ease-of-use, and powerful real-time applications it makes a breeze to write. NoSQL is a powerful technology, and I look forward to utilising it more in the future.",
      yearsExperience: 1),
  Skill(
      name: 'SignalR',
      imagePath: "assets/skills/signalr.png",
      description:
          "SignalR is a powerful tool, and using it alongside CosmosDB turbo-charged my workflow, letting me produce a demo application showing live real-time sensor data in just three days - and most of that was writing the UI. A beautiful tool for building excellent modern applications.",
      yearsExperience: 1),
  Skill(
      name: 'Dart',
      imagePath: "assets/skills/dart.png",
      description:
          "I was introduced to Dart in 2018 while experimenting with Flutter, and it's a language I find a joy to work with. Jampacked with small QOL features like optional 'new', Dart's syntax is clean and highly readable. Features like mixins allow for some powerful design patterns, and Streams and Futures make writing responsive real-time apps a breeze. I've mostly used Dart with Flutter, but also for some small web servers using Dio and some AngularDart (RIP) personal projects.",
      yearsExperience: 4),
  Skill(
      name: 'Flutter',
      imagePath: "assets/skills/flutter.png",
      description:
          "I've been bullish on Flutter since it's earliest days, while it was still in preview. I shipped my first application using Flutter a few months after it's release, and it formed the backbone of the work I did with InterAppt. Flutter makes writing beautiful, performant apps a breeze, and coming from a background of working with Xamarin Forms and Apache Cordova, it's a game changer. I love it so much I built this site with it!",
      yearsExperience: 4),
  Skill(
      name: '.NET Framework',
      imagePath: "assets/skills/dotnet.png",
      description:
          "While I haven't worked with .NET Framework outside of legacy support in the last few years, it is where I started my professional journey. From ASP.NET websites to WinForms and WPF desktop tools, I have extensive experience working with .NET Framework. LINQ and EntityFramework are killer features, making working with live data a delight.",
      yearsExperience: 6),
  Skill(
      name: '.NET Core',
      imagePath: "assets/skills/dotnetcore.png",
      description:
          "The .NET you know and love, but faster, open-source, and cross-platform. I started with .NET Core 1.1, and built my first production app with 2.0 and EFCore 2.0. The framework has matured rapidly since then, with the early adopter speedbumps now a distant memory. Since EFCore5 I've fully adopted .NET Core and built web and desktop applications utilising it.",
      yearsExperience: 6),
  Skill(
      name: 'Nordic nRF52 Series',
      imagePath: "assets/skills/nordic.png",
      description:
          "I've spent a lot of time with Nordic's nRF52 series chips over the last two years, writing a custom bluetooth stack implementation using the nRF5 SDK and exploring the exciting commercial potential of Bluetooth 5.1 AoA technologies with their Nordic Connect SDK.",
      yearsExperience: 2)
];
